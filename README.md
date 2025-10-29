# 🚀 macOS Development Environment Setup

**A comprehensive, automated setup script for building a complete macOS development environment**

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![macOS](https://img.shields.io/badge/macOS-Compatible-brightgreen.svg)](https://www.apple.com/macos/)
[![Maintained](https://img.shields.io/badge/Maintained-Yes-green.svg)](https://github.com/ArchTaqi/DevOS-Setup)

## 📋 Overview

This project provides a unified, automated setup script that transforms a fresh macOS installation into a fully-configured development environment. Whether you're setting up a new machine or maintaining consistency across multiple systems, this script handles everything from package managers to shell customization.

### What's Automated

- ✅ **Package Management**: Homebrew and core dependencies
- ✅ **Version Control**: Git, GitHub CLI, and related tools
- ✅ **Development Fonts**: Nerd Fonts, Powerline-patched fonts
- ✅ **IDEs & Editors**: VS Code, Cursor, Vim, Neovim
- ✅ **Productivity Tools**: Browsers, communication apps, utilities
- ✅ **Terminal Tools**: iTerm2, Warp, tmux, and more
- ✅ **Programming Languages**: PHP, Go, Rust, Node.js, Python
- ✅ **Containerization**: Docker, Kubernetes, related tools
- ✅ **Infrastructure as Code**: Terraform, Terragrunt, Terraformer
- ✅ **Shell Environment**: Zsh, Oh My Zsh, custom aliases and configuration

## 🚀 Quick Start

### One-Line Installation

```bash
chmod +x setup-macos.sh
./setup-macos.sh
```

The script features colored output and progress indicators to guide you through the installation process.

---

## 📦 Complete Software Catalog

### 🛠️ Development Tools

#### Version Control & Collaboration
| Tool | Description | Status |
|------|-------------|--------|
| **Git** | Distributed version control system | ✅ Installed |
| **GitHub CLI (gh)** | GitHub's official command line tool | ✅ Installed |
| **Git LFS** | Large File Storage for Git | ✅ Installed |
| **Git Flow** | Git branching model extensions | ✅ Installed |
| **Git Extras** | Additional Git utilities | ✅ Installed |

#### IDEs & Code Editors
| Tool | Description | Status |
|------|-------------|--------|
| **Visual Studio Code** | Powerful, extensible code editor | ✅ Installed |
| **Cursor** | AI-powered code editor | ✅ Installed |
| **Vim** | Classic terminal-based editor | ✅ Installed |
| **Neovim** | Modern Vim fork with better extensibility | ✅ Installed |

#### Terminal Emulators
| Tool | Description | Status |
|------|-------------|--------|
| **iTerm2** | Feature-rich terminal replacement | ✅ Installed |
| **Warp** | Modern, Rust-based terminal | ✅ Installed |
| **tmux** | Terminal multiplexer | ✅ Installed |
| **Termius** | Cross-platform SSH client | ✅ Installed |
| **Asciinema** | Terminal session recorder | ✅ Optional |

### � Programming Languages & Runtimes

| Language | Version Manager | Package Manager | Status |
|----------|----------------|-----------------|--------|
| **PHP** | — | Composer | ✅ Installed |
| **Go** | — | go modules | ✅ Installed |
| **Rust** | rustup | Cargo | ✅ Installed |
| **Node.js** | nvm | npm/yarn/pnpm | ✅ Installed |
| **Python** | pyenv | pip/pipenv/uv | ✅ Installed |

### 🐳 Container & Orchestration Tools

| Tool | Description | Status |
|------|-------------|--------|
| **Docker** | Container runtime | ✅ Installed |
| **Docker Compose** | Multi-container orchestration | ✅ Installed |
| **Kubernetes (kubectl)** | Kubernetes CLI | ✅ Installed |
| **Minikube** | Local Kubernetes cluster | ✅ Installed |
| **Kustomize** | Kubernetes configuration management | ✅ Installed |

### 🏗️ Infrastructure as Code

| Tool | Description | Status |
|------|-------------|--------|
| **Terraform** | Infrastructure provisioning | ✅ Installed |
| **Terragrunt** | Terraform wrapper for DRY configs | ✅ Installed |
| **Terraformer** | Import existing infrastructure to Terraform | ✅ Installed |
| **Terrascan** | Static code analyzer for IaC | ✅ Installed |

### 🎨 Design & Prototyping

| Tool | Description | Status |
|------|-------------|--------|
| **Figma** | Collaborative interface design tool | 📦 Web-based |
| **Draw.io** | Technical diagram creation | 📦 Web-based |
| **Whimsical** | Docs, flowcharts, wireframes, mind maps | ✅ Recommended |
| **Contrast** | Color and accessibility tool | 🔧 Optional |
| **Feather Icons** | Open source icon set | 📦 Web-based |

### 📝 Productivity & Organization

#### Note-Taking & Knowledge Management
| Tool | Description | Status |
|------|-------------|--------|
| **Notion** | All-in-one workspace | ✅ Installed |
| **Notion Calendar** | Calendar integration | ✅ Installed |
| **Instapaper** | Read-it-later service | 🔧 Optional |
| **Readwise** | Highlight management | 🔧 Optional |

#### Project Management
| Tool | Description | Status |
|------|-------------|--------|
| **Allo.io** | Combines Trello, Miro, and PowerPoint | ✅ Recommended |
| **webwhiteboard.com** | Quick collaborative whiteboard | 📦 Web-based |

#### Time Management
| Tool | Description | Status |
|------|-------------|--------|
| **Rize.io** | Productivity and time tracking | ✅ Recommended |
| **Copilot** | Smart budgeting and bills | 🔧 Optional |

### 🌐 Browsers & Communication

#### Web Browsers
| Tool | Description | Status |
|------|-------------|--------|
| **Brave** | Privacy-focused browser | ✅ Installed |

#### Communication Tools
| Tool | Description | Status |
|------|-------------|--------|
| **Slack** | Team communication | ✅ Installed |
| **Discord** | Community & voice chat | ✅ Installed |
| **Telegram** | Secure messaging | ✅ Installed |
| **Microsoft Teams** | Enterprise collaboration | ✅ Installed |
| **Texts** | Unified messaging inbox | 🔧 Optional |

### 🔧 Utilities & System Tools

#### Media & Entertainment
| Tool | Description | Status |
|------|-------------|--------|
| **VLC** | Universal media player | ✅ Installed |
| **4K Video Downloader** | Video download utility | ✅ Installed |
| **OBS Studio** | Screen recording and streaming | ✅ Installed |
| **Loom** | Quick screen recording with overlays | 🔧 Optional |
| **Kap** | Lightweight screen recorder | 🔧 Optional |
| **Halide Mark II** | Professional camera app | 🔧 Optional |

#### File Management
| Tool | Description | Status |
|------|-------------|--------|
| **Transmission** | BitTorrent client | ✅ Installed |
| **App Cleaner** | Application uninstaller | ✅ Installed |

#### Window Management
| Tool | Description | Status |
|------|-------------|--------|
| **Magnet** | Window organization via keyboard | 🔧 Optional |
| **PixelSnap 2** | Measurement and alignment tool | 🔧 Optional |

### 🔐 Security & Privacy

| Tool | Description | Status |
|------|-------------|--------|
| **1Password** | Password manager | ✅ Recommended |
| **Clerk.dev** | Authentication for web apps | 📦 Service |

### 🧪 API Development & Testing

| Tool | Description | Status |
|------|-------------|--------|
| **Postman** | API development platform | ✅ Installed |
| **Insomnia** | REST and GraphQL client | ✅ Installed |
| **HTTPie** | CLI HTTP client | ✅ Installed |
| **Prism** | HTTP mock & proxy server | ✅ Optional |
| **Postmark** | Transactional email service | 📦 Service |

### ☁️ Cloud Platforms & Services

#### Hosting & Deployment
| Tool | Description | Status |
|------|-------------|--------|
| **Vercel** | Frontend deployment platform | 📦 Service |
| **Heroku** | Multi-language cloud platform | 📦 Service |
| **Render** | Modern cloud platform | 📦 Service |
| **PlanetScale** | Serverless MySQL database | 📦 Service |

#### No-Code/Low-Code
| Tool | Description | Status |
|------|-------------|--------|
| **Glide** | Mobile app builder from spreadsheets | 📦 Service |
| **Gumroad** | Creator commerce platform | 📦 Service |

### 📱 Social Media & Content

| Tool | Description | Status |
|------|-------------|--------|
| **Typefully** | Twitter thread composer with analytics | 🔧 Optional |
| **Letterboxd** | Movie tracking and discovery | 🔧 Optional |
| **IFTTT** | App automation platform | 🔧 Optional |

### 🎯 Architecture & Documentation

| Tool | Description | Status |
|------|-------------|--------|
| **Diagrams (Python)** | Architecture diagrams as code | ✅ Recommended |
| **Mimestream** | Native macOS Gmail client | 🔧 Optional |
| **Descript** | Audio/video editing with transcription | 🔧 Optional |
| **Fig** | Terminal autocomplete | 🔧 Optional |

### 🔤 Development Fonts

All fonts are installed via Homebrew:

- **Hack** - Clean, crisp programming font
- **Fira Code** - Font with programming ligatures
- **Inconsolata** - Monospaced font for code
- **Hack Nerd Font** - Patched with extra glyphs
- **Meslo Nerd Font** - Customized Menlo font
- **Source Code Pro** - Adobe's monospaced font
- **Powerline Fonts** - Terminal status line fonts

**Legend:**
- ✅ Installed: Automatically installed by the setup script
- 📦 Web-based/Service: Cloud-based service, no local installation
- 🔧 Optional: Recommended but not auto-installed
- ✅ Recommended: Highly recommended for installation

---

## 🎨 Visual Studio Code Configuration

### Essential Extensions

The following VS Code extensions are recommended for an optimal development experience:

#### Core Development
- **[Python Extension Pack](https://marketplace.visualstudio.com/items?itemName=donjayamanne.python-extension-pack)** - Complete Python development environment
- **[Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)** - Jupyter notebook support for VS Code
- **[Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)** - Autocomplete for file paths
- **[Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)** - Improved comment highlighting

#### AI & GitHub Integration
- **[GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)** - AI pair programmer
- **[GitHub Codespaces](https://marketplace.visualstudio.com/items?itemName=GitHub.codespaces)** - Cloud development environments
- **[GitHub Actions](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-github-actions)** - Workflow automation
- **[GitHub Pull Requests](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)** - PR management in VS Code

#### Language Support
- **[Ruff](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff)** - Fast Python linter and formatter
- **[HashiCorp Terraform](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)** - Terraform syntax and validation
- **[PostgreSQL](https://marketplace.visualstudio.com/items?itemName=ms-ossdata.vscode-pgsql)** - PostgreSQL management

#### Code Quality
- **[SonarQube for IDE](https://marketplace.visualstudio.com/items?itemName=SonarSource.sonarlint-vscode)** - Code quality and security analysis

#### Themes & Appearance
- **[Gruvbox Themes](https://marketplace.visualstudio.com/items?itemName=tomphilbin.gruvbox-themes)** - Retro groove color scheme
- **[GitHub Light Theme](https://marketplace.visualstudio.com/items?itemName=Hyzeta.vscode-theme-github-light)** - GitHub's light theme
- **[Dark GitHub Theme](https://marketplace.visualstudio.com/items?itemName=xmorse.dark-theme-github)** - GitHub's dark theme
- **[Atom One Dark Theme](https://marketplace.visualstudio.com/items?itemName=akamud.vscode-theme-onedark)** - Popular Atom theme
- **[Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)** - Material Design icons

### Customizing VS Code

#### Theme Configuration

Access via: **Settings → Themes** or `Cmd + K` then `Cmd + T`

**Recommended Setup:**
- **Color Theme**: Gruvbox Dark (Soft) or Atom One Dark
- **File Icon Theme**: Material Icon Theme

#### Custom Icon Associations

Add to your `settings.json` (`Cmd/Ctrl + Shift + P` → **Open User Settings (JSON)**):

```json
{
  "material-icon-theme.folders.associations": {
    "venv": "environment",
    "references": "docs",
    "modeling": "generator",
    "migrations": "database",
    "tests": "test",
    "components": "components",
    "utils": "tools",
    "hooks": "hook",
    "api": "api"
  }
}
```

[Browse all Material Icon options →](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

#### Auto Formatting

Enable in **Settings**:
- ✅ Format on Save
- ✅ Format on Type (Python)
- **Default Formatter**: Ruff (for Python)

Add to `settings.json`:

```json
{
  "[python]": {
    "editor.formatOnType": true,
    "editor.formatOnSave": true,
    "editor.defaultFormatter": "charliermarsh.ruff"
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  }
}
```

#### Jupyter Notebook Integration

Run Jupyter notebooks directly in VS Code with full shortcut support:

**Configuration:**
1. Select the correct Python kernel
2. Enable interactive window for `Shift + Enter`

Add to `settings.json`:

```json
{
  "jupyter.interactiveWindow.textEditor.executeSelection": true,
  "jupyter.notebookFileRoot": "${workspaceFolder}/notebooks",
  "notebook.cellToolbarLocation": {
    "default": "right",
    "jupyter-notebook": "left"
  }
}
```

#### GitHub Integration

**Built-in Git Features:**
- **Source Control Menu**: Access commit, push, pull, merge without leaving the editor
- **Branch Management**: View current branch, switch branches, create new ones
- **Quick Browser Access**: Open repository in browser from Source Control menu
- **Pull Request Reviews**: Review and comment on PRs directly in VS Code
- **Conflict Resolution**: Visual merge conflict resolution tools

**Keyboard Shortcuts:**
- `Cmd + Shift + G`: Open Source Control
- `Cmd + Enter`: Commit staged changes
- `Cmd + Shift + P` → "Git: Pull": Pull latest changes

---

## ⚙️ Shell Configuration

The setup script automatically configures your shell environment for maximum productivity:

### Oh My Zsh Framework

Includes a curated selection of plugins:

- **git** - Git aliases and functions
- **docker** - Docker completion and aliases
- **docker-compose** - Docker Compose completion
- **last-working-dir** - Restore last working directory
- **zsh-autosuggestions** - Fish-like autosuggestions
- **zsh-syntax-highlighting** - Command syntax highlighting

### Custom Aliases

All aliases are stored in `~/.zsh_aliases` for easy management:

#### 📁 Navigation Shortcuts
```bash
down        # Quick jump to ~/Downloads
projects    # Quick jump to ~/Desktop/projects (customize path)
```

#### ⚙️ Configuration Management
```bash
zshconfig   # Edit .zshrc in your default editor
ohmyzsh     # Edit Oh My Zsh configuration
builda      # Reload shell configuration (source ~/.zshrc)
als         # Display all custom aliases
```

#### 🔧 System Utilities
```bash
please      # sudo - the polite way
fucking     # sudo - when you're frustrated
path        # Display current PATH variable (formatted)
cpath       # Copy current working directory to clipboard
ip          # Show local IP address
cleards     # Recursively remove all .DS_Store files
```

#### 🔀 Git Shortcuts
```bash
gs          # git status
ga          # git add
gc          # git commit
gp          # git push
gl          # git log --oneline --graph --decorate (pretty log)
gco         # git checkout
gb          # git branch
gd          # git diff
```

#### 🐳 Docker Shortcuts
```bash
dps         # docker ps (running containers)
dpsa        # docker ps -a (all containers)
di          # docker images
dex         # docker exec -it (interactive shell)
dlogs       # docker logs -f (follow logs)
dstop       # docker stop (stop container)
drm         # docker rm (remove container)
```

#### 🐍 Python Shortcuts
```bash
pym         # python3 manage.py (Django)
mkenv       # python3 -m venv venv (create virtual environment)
startenv    # source venv/bin/activate (activate venv)
stopenv     # deactivate (deactivate venv)
py          # python3
pip         # pip3
```

### Environment Variables

The script configures essential environment variables:

```bash
# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"

# Go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Python
export PATH="$HOME/.local/bin:$PATH"
```

---

## 🔧 Post-Installation Steps

### 1. Review Configuration

Before applying the new configuration, review it:

```bash
# View the new configuration
cat ~/.zshrc.new

# Check for any issues
zsh -n ~/.zshrc.new
```

### 2. Apply Configuration

If everything looks good:

```bash
# Backup your current config (if not already backed up)
cp ~/.zshrc ~/.zshrc.backup

# Apply the new configuration
cp ~/.zshrc.new ~/.zshrc

# Reload your shell
source ~/.zshrc
```

### 3. Verify Installation

Test your setup:

```bash
# Check Homebrew
brew --version

# Check Git
git --version

# Check programming languages
php --version
go version
rustc --version
node --version
python3 --version

# Check Docker
docker --version
kubectl version --client

# Check Terraform
terraform --version
```

### 4. Manual Configuration Steps

Some tools require additional setup:

#### GitHub CLI Authentication
```bash
gh auth login
```

#### NVM (Node Version Manager)
```bash
# Install latest LTS version
nvm install --lts

# Set default version
nvm alias default node
```

#### Python Environment
```bash
# Install pipenv globally
pip3 install --user pipenv

# Install uv (fast Python package installer)
pip3 install --user uv
```

#### Docker Configuration
```bash
# Start Docker Desktop (if installed via GUI)
# Or configure Docker daemon settings as needed
```

#### VS Code Extensions

Install extensions via command line:

```bash
# Install essential extensions
code --install-extension ms-toolsai.jupyter
code --install-extension GitHub.copilot
code --install-extension GitHub.vscode-pull-request-github
code --install-extension charliermarsh.ruff
code --install-extension HashiCorp.terraform
code --install-extension tomphilbin.gruvbox-themes
code --install-extension PKief.material-icon-theme
```

### 5. Restart Terminal

For all changes to take effect:

```bash
# Close and reopen your terminal
# Or start a new shell session
exec zsh
```

---

## 📁 Project Structure

```
DevOS-Setup/
├── README.md                  # This comprehensive guide
├── setup-macos.sh            # Main unified setup script
├── software-im-thankful-for.md # Software recommendations (legacy)
├── vscode-config.json        # VS Code configuration
├── vscode.json               # VS Code settings backup
└── .gitignore                # Git ignore rules
```

### Script Components

The `setup-macos.sh` script is organized into modular functions:

- `install_xcode_tools()` - Xcode Command Line Tools
- `install_homebrew()` - Homebrew package manager
- `setup_git()` - Git and GitHub CLI configuration
- `install_fonts()` - Development fonts
- `install_terminal_tools()` - Terminal emulators and utilities
- `setup_productivity_tools()` - Browsers, communication apps
- `install_development_tools()` - IDEs and editors
- `setup_programming_languages()` - Language runtimes and toolchains
- `setup_containers()` - Docker, Kubernetes
- `setup_infrastructure_tools()` - Terraform and related tools
- `setup_shell()` - Zsh and Oh My Zsh configuration
- `setup_aliases()` - Custom command aliases
- `finalize_setup()` - PATH and environment variables

---

## 🎨 Features & Highlights

### 🌈 Colored Output
The script provides clear visual feedback:

- 🔵 **Blue**: Informational messages and section headers
- 🟢 **Green**: Success messages and confirmations
- 🟡 **Yellow**: Warnings and important notices
- 🔴 **Red**: Error messages and failures

### ⚡ Error Handling
- Script exits immediately on error (`set -e`)
- Validates installations before proceeding
- Checks for existing tools to avoid redundant installs
- Provides clear error messages and troubleshooting hints

### 🔄 Idempotent Design
- Safe to run multiple times on the same system
- Skips already-installed components
- Backs up existing configurations before modifying
- Non-destructive by default

### 📦 Modular Architecture
- Each component is self-contained
- Easy to enable/disable specific sections
- Clear separation of concerns
- Extensible for custom additions

---

## 🛠️ Customization Guide

### Modify Git Configuration

Edit the Git setup section (around line 62-70 in the script):

```bash
# Customize with your information
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
git config --global core.editor "code --wait"
git config --global init.defaultBranch main
```

### Add/Remove Applications

To customize installed applications, modify the respective arrays:

```bash
# Example: Add applications to productivity tools
setup_productivity_tools() {
    local apps=(
        "brave-browser"
        "slack"
        "discord"
        "notion"
        "your-app-here"  # Add your application
    )
}
```

### Customize Aliases

Edit the `setup_aliases()` function to add your own aliases:

```bash
# Add to ~/.zsh_aliases
cat >> ~/.zsh_aliases << 'EOF'
# Your custom aliases
alias myproject='cd ~/Projects/my-important-project'
alias deploy='./scripts/deploy.sh'
alias test='npm test'
EOF
```

### Modify PATH Configuration

Customize environment variables in `finalize_setup()`:

```bash
# Add custom paths
export PATH="/your/custom/path:$PATH"
export CUSTOM_VAR="your_value"
```

### Skip Specific Sections

Comment out sections you don't need:

```bash
# In the main execution flow
install_xcode_tools
install_homebrew
setup_git
install_fonts
# install_terminal_tools  # Skip this section
setup_programming_languages
```

---

## 🔍 Troubleshooting

### Common Issues and Solutions

#### Xcode Tools Installation Fails

**Problem**: Xcode Command Line Tools installation hangs or fails

**Solution**:
```bash
# Install manually
xcode-select --install

# If already installed, reset
sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install

# Then re-run the script
```

#### Homebrew Not Found

**Problem**: `brew: command not found` after installation

**Solution**:
```bash
# Add Homebrew to PATH manually
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Verify
brew --version
```

#### Permission Errors

**Problem**: Permission denied during installation

**Solution**:
```bash
# Fix Homebrew permissions
sudo chown -R $(whoami) /opt/homebrew/*

# Fix .zshrc permissions
chmod 644 ~/.zshrc

# Re-run with sudo for specific commands if needed
```

#### Oh My Zsh Plugin Fails

**Problem**: Plugin installation fails or plugins don't load

**Solution**:
```bash
# Manually clone plugins
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Verify plugins in .zshrc
cat ~/.zshrc | grep plugins
```

#### Docker Desktop Issues

**Problem**: Docker commands fail or daemon not running

**Solution**:
```bash
# Ensure Docker Desktop is running
open -a Docker

# Wait for Docker to start, then verify
docker version
docker ps
```

#### NVM Not Loading

**Problem**: `nvm: command not found`

**Solution**:
```bash
# Add NVM initialization to .zshrc
cat >> ~/.zshrc << 'EOF'
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
EOF

# Reload
source ~/.zshrc
```

#### Python/Pip Issues

**Problem**: Multiple Python versions causing conflicts

**Solution**:
```bash
# Use pyenv to manage versions
pyenv install 3.11.0
pyenv global 3.11.0

# Verify
python --version
which python
```

#### VS Code Command Line Tools

**Problem**: `code` command not found

**Solution**:
```bash
# Install VS Code command line tools
# Open VS Code → Command Palette (Cmd+Shift+P)
# Type: "Shell Command: Install 'code' command in PATH"

# Or manually symlink
ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code
```

### Getting Help

If you encounter issues not covered here:

1. **Check the logs**: The script outputs detailed information
2. **Search GitHub Issues**: [DevOS-Setup Issues](https://github.com/ArchTaqi/DevOS-Setup/issues)
3. **Homebrew troubleshooting**: `brew doctor`
4. **Review environment**: `echo $PATH`, `which <command>`

---

## 📝 Best Practices

### Before Running the Script

- ✅ **Backup important data** - Always backup before major system changes
- ✅ **Free up disk space** - Ensure at least 10GB available
- ✅ **Close running applications** - Minimize interference during installation
- ✅ **Connect to stable internet** - Large downloads require stable connection
- ✅ **Review the script** - Understand what will be installed

### During Installation

- ⏳ **Be patient** - Some installations take time (especially Xcode)
- 👀 **Monitor output** - Watch for errors or required interactions
- 📝 **Note any errors** - Save error messages for troubleshooting
- 🔄 **Don't interrupt** - Let each section complete

### After Installation

- 🔍 **Verify installations** - Test key tools work correctly
- 📚 **Read documentation** - Familiarize yourself with new tools
- ⚙️ **Customize settings** - Adjust configurations to your preferences
- 💾 **Backup configuration** - Save your `.zshrc` and settings
- 🔄 **Regular updates** - Keep tools updated with `brew upgrade`

### Maintenance

```bash
# Weekly maintenance routine
brew update                    # Update Homebrew
brew upgrade                   # Upgrade installed packages
brew cleanup                   # Remove old versions
brew doctor                    # Check for issues

# Update Oh My Zsh
omz update

# Update Node.js (via nvm)
nvm install node --latest-npm
nvm alias default node

# Update Python packages
pip3 list --outdated
pip3 install --upgrade pip
```

## � Security & Privacy

This script modifies system configurations and installs software. Please review the script before running:

- ✅ **Open source** - All code is visible and reviewable
- ✅ **No telemetry** - Disables telemetry where possible
- ✅ **Local execution** - Everything runs on your machine
- ✅ **No external dependencies** - Uses official package managers
- ⚠️ **Administrator access required** - Some operations need elevated privileges

**Note**: Always review scripts before running them with elevated privileges.

<div align="center">

**Made with ❤️ by [Muhammad Taqi](https://github.com/ArchTaqi)**

**Last Updated**: October 30, 2025

[⬆ Back to Top](#-macos-development-environment-setup)

</div>
