#!/usr/bin/env bash

################################################################################
#                                                                              #
#  macOS Development Environment Setup Script                                 #
#  Author: Muhammad Taqi (archtaqi)                                           #
#  Description: Complete automated setup for macOS development environment    #
#                                                                              #
################################################################################

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging functions
log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Progress indicator
print_section() {
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo -e "${GREEN}$1${NC}"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
}

################################################################################
# 1. INITIAL SETUP & HOMEBREW
################################################################################

setup_homebrew() {
    print_section "1. Setting up Homebrew Package Manager"

    # Install Xcode Command Line Tools
    if ! xcode-select -p &>/dev/null; then
        log_info "Installing Xcode Command Line Tools..."
        xcode-select --install
        log_warning "Please complete Xcode installation and re-run this script"
        exit 0
    else
        log_success "Xcode Command Line Tools already installed"
    fi

    # Install Homebrew
    if ! command -v brew &>/dev/null; then
        log_info "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc
        export PATH=/opt/homebrew/bin:$PATH
    else
        log_success "Homebrew already installed"
    fi

    # Update and upgrade Homebrew
    log_info "Updating Homebrew..."
    brew doctor || true
    brew update
    brew upgrade
    log_success "Homebrew setup complete"
}

################################################################################
# 2. GIT CONFIGURATION
################################################################################

setup_git() {
    print_section "2. Installing and Configuring Git Tools"

    log_info "Installing Git tools..."
    brew install git gh git-lfs git-flow git-extras

    log_info "Configuring Git..."
    git config --global user.name "archtaqi"
    git config --global user.email "taqi.arch@gmail.com"
    git config --global core.editor vim
    git config --global core.excludesfile ~/.gitignore

    log_success "Git configuration complete"
}

################################################################################
# 3. FONTS INSTALLATION
################################################################################

setup_fonts() {
    print_section "3. Installing Development Fonts"

    log_info "Installing Powerline fonts..."
    cd ~
    if [ ! -d "fonts" ]; then
        git clone https://github.com/powerline/fonts.git
        cd fonts
        ./install.sh
        cd ~
        rm -rf fonts
    fi

    log_info "Installing font tools..."
    brew tap bramstein/webfonttools
    brew install sfnt2woff sfnt2woff-zopfli woff2

    log_info "Installing Nerd Fonts and coding fonts..."
    local fonts=(
        font-hack
        font-fira-code
        font-inconsolata
        font-hack-nerd-font
        font-meslo-nerd-font
        font-source-code-pro
        font-menlo-for-powerline
        font-meslo-for-powerline
        font-meslo-nerd-font-mono
        font-fira-mono-for-powerline
    )

    for font in "${fonts[@]}"; do
        brew install --cask --force "$font" 2>/dev/null || log_warning "Font $font may already be installed"
    done

    log_success "Fonts installation complete"
}

################################################################################
# 4. IDEs & EDITORS
################################################################################

setup_ides() {
    print_section "4. Installing IDEs and Editors"

    log_info "Installing Visual Studio Code and Cursor..."
    brew install --cask visual-studio-code cursor

    log_success "IDEs installation complete"
}

################################################################################
# 5. PRODUCTIVITY & WORK TOOLS
################################################################################

setup_productivity_tools() {
    print_section "5. Installing Productivity & Work Tools"

    log_info "Installing browsers and communication tools..."
    local apps=(
        brave-browser
        # microsoft-teams
        # telegram
        # discord
        # slack
        notion
        notion-calendar
        drawio
        vlc
        4k-video-downloader
        4k-video-to-mp3
        insomnia
        termius
        app-cleaner
        transmission
    )

    for app in "${apps[@]}"; do
        brew install --cask "$app" 2>/dev/null || log_warning "$app may already be installed"
    done

    brew install pure-ftpd

    log_success "Productivity tools installation complete"
}

################################################################################
# 6. TERMINAL & DEVELOPMENT TOOLS
################################################################################

setup_terminal_tools() {
    print_section "6. Installing Terminal & Development Tools"

    log_info "Installing shell and terminal utilities..."
    brew install --force tmux tree screen bash bash-completion2

    log_info "Installing development utilities..."
    local tools=(
        jq vim neovim mas curl gotop httpie wget
        awscli hub p7zip rar
    )

    for tool in "${tools[@]}"; do
        brew install "$tool" || log_warning "$tool installation may have failed"
    done

    log_info "Installing cloud tools..."
    brew install --cask google-cloud-sdk ngrok
    brew install heroku/brew/heroku
    brew install --cask postman

    log_success "Terminal tools installation complete"
}

################################################################################
# 7. PROGRAMMING LANGUAGES
################################################################################

setup_php() {
    print_section "7.1. Installing PHP"

    log_info "Installing PHP and Composer..."
    brew install php composer
    php --version

    log_success "PHP installation complete"
}

setup_golang() {
    print_section "7.2. Installing Go"

    log_info "Installing Go..."
    brew install golang
    go version

    log_success "Go installation complete"
}

setup_rust() {
    print_section "7.3. Installing Rust"

    log_info "Installing Rust via rustup..."
    brew install rustup

    # Initialize rustup
    rustup-init -y

    # Add Cargo to PATH in zshrc if not already present
    if ! grep -q 'export PATH="$HOME/.cargo/bin:$PATH"' ~/.zshrc; then
        echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.zshrc
        log_info "Added Cargo to PATH in ~/.zshrc"
    fi

    # Source the cargo environment
    source "$HOME/.cargo/env" 2>/dev/null || true

    rustc --version || log_warning "Rust installed, please restart terminal"

    log_success "Rust installation complete"
}

setup_nodejs() {
    print_section "7.4. Installing Node.js"

    log_info "Installing Node Version Manager (nvm)..."
    if [ ! -d "$HOME/.nvm" ]; then
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

        # Load nvm
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

        log_info "Installing LTS version of Node.js..."
        nvm install --lts
        nvm use --lts
    else
        log_success "nvm already installed"
    fi

    log_info "Installing global npm packages..."
    npm install -g lite-server gitignore license yarn pm2 prettier eslint

    log_success "Node.js installation complete"
}

setup_python() {
    print_section "7.5. Installing Python"

    log_info "Installing Python 3 and tools..."
    brew install python3 pipx python3@3.11 pipenv pyenv uv
    brew link python3
    brew postinstall python3

    # Configure pyenv
    if ! grep -q 'PYENV_ROOT' ~/.zshrc; then
        cat >> ~/.zshrc << 'EOF'

# Pyenv configuration
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
EOF
    fi

    # Configure uv
    if ! grep -q 'uv generate-shell-completion' ~/.zshrc; then
        echo 'eval "$(uv generate-shell-completion zsh)"' >> ~/.zshrc
    fi

    python3 --version

    log_success "Python installation complete"
}

################################################################################
# 8. CONTAINERIZATION & ORCHESTRATION
################################################################################

setup_docker() {
    print_section "8. Installing Docker"

    log_info "Installing Docker and tools..."
    brew install docker docker-buildx docker-compose

    log_success "Docker installation complete"
}

setup_kubernetes() {
    print_section "9. Installing Kubernetes Tools"

    log_info "Installing kubectl, minikube, and related tools..."
    brew install kubectl hyperkit minikube kustomize

    log_success "Kubernetes tools installation complete"
}

################################################################################
# 10. INFRASTRUCTURE AS CODE
################################################################################

setup_terraform() {
    print_section "10. Installing Terraform Tools"

    log_info "Installing Terraform and related tools..."
    brew tap hashicorp/tap
    brew install hashicorp/tap/terraform terragrunt terraformer terrascan

    log_success "Terraform installation complete"
}

################################################################################
# 11. SHELL CONFIGURATION (ZSH + Oh My Zsh)
################################################################################

setup_zsh_config() {
    print_section "11. Configuring Zsh and Oh My Zsh"

    # Install Oh My Zsh if not present
    if [ ! -d "$HOME/.oh-my-zsh" ]; then
        log_info "Installing Oh My Zsh..."
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    else
        log_success "Oh My Zsh already installed"
    fi

    # Install zsh plugins
    log_info "Installing zsh plugins..."
    ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

    # zsh-autosuggestions
    if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
        git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
    fi

    # zsh-syntax-highlighting
    if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
        git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
    fi

    log_success "Zsh configuration complete"
}

setup_aliases() {
    print_section "12. Setting up Shell Aliases"

    # Create or update aliases in .zshrc
    local ALIAS_FILE="$HOME/.zsh_aliases"

    cat > "$ALIAS_FILE" << 'EOF'
#!/usr/bin/env zsh

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Shell Aliases Configuration
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# Directory Navigation
alias down="cd ~/Downloads/"
alias projects="cd ~/Desktop/projects"

# Shell Configuration
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias builda="source ~/.zshrc"
alias als="cat ~/.zsh_aliases"

# Sudo Alternatives
alias please="sudo"
alias fucking="sudo"

# Path Utilities
alias path="echo $PWD"
alias cpath="echo $PWD | pbcopy"

# File Operations
alias cleards="find . -type f -name '*.DS_Store' -ls -delete"

# Applications
alias skim="open -a Skim.app"
alias speechserver="browser-sync start --server --files \"*.html, *.css, *.md\""

# Network
alias ip="ipconfig getifaddr en0"

# Git (additional shortcuts)
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"

# Docker shortcuts
alias dps="docker ps"
alias dpsa="docker ps -a"
alias di="docker images"
alias dex="docker exec -it"
alias dlogs="docker logs -f"

# Python shortcuts
alias pym="python3 manage.py"
alias mkenv="python3 -m venv env"
alias startenv="source env/bin/activate && which python3"
alias stopenv="deactivate"

# List aliases with colors
alias ls="ls -G"
alias ll="ls -alFh"
alias la="ls -A"
alias l="ls -CF"

# Fun
curl -s https://api.github.com/octocat 2>/dev/null
echo "💡 Type 'als' to see all available aliases"
EOF

    # Add source to .zshrc if not present
    if ! grep -q "source.*\.zsh_aliases" ~/.zshrc; then
        echo "" >> ~/.zshrc
        echo "# Load custom aliases" >> ~/.zshrc
        echo "[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases" >> ~/.zshrc
    fi

    log_success "Aliases configuration complete"
}

################################################################################
# 13. FINAL CONFIGURATION
################################################################################

finalize_setup() {
    print_section "13. Finalizing Setup"

    # Create comprehensive .zshrc if it doesn't exist or backup existing
    if [ -f "$HOME/.zshrc" ]; then
        log_info "Backing up existing .zshrc..."
        cp "$HOME/.zshrc" "$HOME/.zshrc.backup.$(date +%Y%m%d_%H%M%S)"
    fi

    # Create optimized .zshrc
    cat > "$HOME/.zshrc.new" << 'EOF'
# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme configuration
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=(
  "robbyrussell"
  "agnoster"
  "miloshadzic"
)

# Plugins
plugins=(
  git
  docker
  docker-compose
  last-working-dir
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# PATH Configuration
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# Rust/Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Solana (if needed)
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"

# Local binaries
export PATH="$HOME/.local/bin:$PATH"

# Save original PATH
export ORIGINAL_PATH="$PATH"

# Source uv environment if it exists
[ -f "$HOME/.local/bin/env" ] && source "$HOME/.local/bin/env"

# Restore essential paths
export PATH="/usr/bin:/bin:$HOME/.local/bin:$ORIGINAL_PATH:$PATH"

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Development Environment Configuration
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# UV shell completions
if command -v uv >/dev/null 2>&1; then
    eval "$(uv generate-shell-completion zsh)"
fi

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Load Custom Aliases
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases
EOF

    log_info "New .zshrc configuration created at ~/.zshrc.new"
    log_warning "Review and manually move it to ~/.zshrc if satisfied"

    log_success "Setup finalization complete!"
}

################################################################################
# MAIN EXECUTION
################################################################################

main() {
    clear
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "  macOS Development Environment Setup"
    echo "  Author: Muhammad Taqi (archtaqi)"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""

    log_warning "This script will install and configure your development environment."
    log_warning "Please ensure you have a stable internet connection."
    echo ""
    read -p "Press ENTER to continue or Ctrl+C to cancel..."

    # Execute setup functions
    # setup_homebrew
    # setup_git
    setup_fonts
    # setup_ides
    setup_productivity_tools
    setup_terminal_tools
    # setup_php
    setup_golang
    setup_rust
    setup_nodejs
    setup_python
    setup_docker
    setup_kubernetes
    setup_terraform
    # setup_zsh_config
    # setup_aliases
    # finalize_setup

    # Final message
    print_section "🎉 Installation Complete!"
    echo ""
    log_success "All components have been installed successfully!"
    echo ""
    log_info "Next steps:"
    echo "  1. Review ~/.zshrc.new and replace ~/.zshrc if satisfied"
    echo "  2. Run: source ~/.zshrc"
    echo "  3. Restart your terminal"
    echo "  4. Type 'als' to see all available aliases"
    echo ""
    log_warning "Some tools may require a terminal restart to work properly."
    echo ""
}

# Run main function
main
