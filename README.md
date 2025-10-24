# macOS Development Environment Setup

**A comprehensive, automated setup script for macOS development environments**

## 📋 Overview

This unified setup script consolidates all your development environment configuration into a single, well-organized, and modular bash script. It automates the installation and configuration of:

- ✅ Package managers (Homebrew)
- ✅ Version control (Git + GitHub CLI)
- ✅ Development fonts (Nerd Fonts, Powerline)
- ✅ IDEs (VS Code, Cursor)
- ✅ Productivity tools (Browsers, Communication, Utilities)
- ✅ Terminal tools (iTerm2, Warp, tmux, etc.)
- ✅ Programming languages (PHP, Go, Rust, Node.js, Python)
- ✅ Containerization (Docker, Kubernetes)
- ✅ Infrastructure as Code (Terraform, Terragrunt)
- ✅ Shell configuration (Zsh, Oh My Zsh, aliases)

## 🚀 Quick Start

### Prerequisites

- macOS (tested on recent versions)
- Internet connection
- Administrator privileges

### Installation

```bash
# Navigate to the MacOS directory
cd /Users/muhammadtaqi/Projects/DevOS-Setup/MacOS

# Run the unified setup script
./setup-unified.sh
```

The script will guide you through the installation process with colored output and progress indicators.

## 📦 What Gets Installed

### Core Tools

- **Homebrew**: Package manager for macOS
- **Xcode Command Line Tools**: Essential development tools

### Development Tools

#### Version Control
- Git, GitHub CLI (gh)
- Git LFS, Git Flow, Git Extras

#### IDEs & Editors
- Visual Studio Code
- Cursor
- Vim, Neovim

#### Terminal Emulators
- iTerm2
- Warp

#### Programming Languages
- **PHP**: With Composer
- **Go**: Latest version
- **Rust**: Via rustup
- **Node.js**: Via nvm (Node Version Manager)
- **Python**: Python 3, pyenv, pipenv, uv

#### Container & Orchestration
- Docker, Docker Compose
- Kubernetes (kubectl, minikube)
- Kustomize

#### Infrastructure as Code
- Terraform
- Terragrunt
- Terraformer
- Terrascan

### Productivity Tools

- **Browsers**: Brave
- **Communication**: Slack, Discord, Telegram, Microsoft Teams
- **Note-taking**: Notion, Notion Calendar
- **Utilities**: VLC, 4K Video Downloader, Transmission, App Cleaner
- **Development**: Postman, Insomnia, Termius

### Fonts

- Hack, Fira Code, Inconsolata
- Hack Nerd Font, Meslo Nerd Font
- Source Code Pro
- Powerline-patched fonts

## ⚙️ Configuration

### Shell Configuration

The script automatically sets up:

1. **Oh My Zsh**: Popular Zsh framework
2. **Plugins**:
   - git
   - docker
   - docker-compose
   - last-working-dir
   - zsh-autosuggestions
   - zsh-syntax-highlighting

3. **Custom Aliases**: See the aliases section below

### Custom Aliases

All aliases are stored in `~/.zsh_aliases`:

#### Navigation
```bash
down        # cd to ~/Downloads
projects    # cd to ~/Desktop/projects
```

#### Configuration
```bash
zshconfig   # Edit .zshrc
ohmyzsh     # Edit Oh My Zsh config
builda      # Reload shell configuration
als         # Display all aliases
```

#### Utilities
```bash
please      # Polite sudo
fucking     # Aggressive sudo
path        # Show current path
cpath       # Copy current path to clipboard
ip          # Get local IP address
cleards     # Remove all .DS_Store files
```

#### Git Shortcuts
```bash
gs          # git status
ga          # git add
gc          # git commit
gp          # git push
gl          # git log (pretty)
```

#### Docker Shortcuts
```bash
dps         # docker ps
dpsa        # docker ps -a
di          # docker images
dex         # docker exec -it
dlogs       # docker logs -f
```

#### Python Shortcuts
```bash
pym         # python3 manage.py
mkenv       # Create Python virtual environment
startenv    # Activate virtual environment
stopenv     # Deactivate virtual environment
```

## 🔧 Post-Installation

After running the script:

1. **Review the new configuration**:
   ```bash
   cat ~/.zshrc.new
   ```

2. **Replace your existing .zshrc** (if satisfied):
   ```bash
   cp ~/.zshrc.new ~/.zshrc
   ```

3. **Reload your shell**:
   ```bash
   source ~/.zshrc
   ```

4. **Restart your terminal** for all changes to take effect

## 📁 File Organization

```
MacOS/
├── setup-unified.sh    # Main unified setup script
├── setup.sh           # Original setup script (legacy)
├── alias.sh           # Original aliases (legacy)
├── zshrc              # Original zshrc (legacy)
└── README.md          # This file
```

## 🎨 Features

### Colored Output
- 🔵 **Blue**: Informational messages
- 🟢 **Green**: Success messages
- 🟡 **Yellow**: Warning messages
- 🔴 **Red**: Error messages

### Error Handling
- Script exits on error (`set -e`)
- Checks for existing installations
- Provides helpful warnings and next steps

### Modular Design
- Each component is in its own function
- Easy to enable/disable specific sections
- Clear section headers and organization

### Idempotent
- Can be run multiple times safely
- Checks for existing installations
- Backs up existing configurations

## 🛠️ Customization

To customize the script for your needs:

1. **Modify Git Configuration** (lines ~62-70):
   ```bash
   git config --global user.name "your-name"
   git config --global user.email "your-email@example.com"
   ```

2. **Add/Remove Applications**:
   - Edit the arrays in respective setup functions
   - Example: `setup_productivity_tools()` line ~180

3. **Change Aliases**:
   - Edit the `setup_aliases()` function (line ~405)

4. **Modify PATH**:
   - Edit the finalize_setup() function (line ~505)

## 🔍 Troubleshooting

### Script fails during Xcode installation
- Complete the Xcode installation manually
- Re-run the script

### Homebrew not found after installation
- Restart your terminal
- Or manually run: `export PATH=/opt/homebrew/bin:$PATH`

### Permission errors
- Ensure you have administrator privileges
- Some installations may require `sudo`

### Plugin installation fails
- Check your internet connection
- Manually clone the plugins to `~/.oh-my-zsh/custom/plugins/`

## 📝 Notes

- The script backs up your existing `.zshrc` to `.zshrc.backup.TIMESTAMP`
- A new configuration is created as `.zshrc.new` for review
- Some tools may require terminal restart to work properly
- NVM installation adds configuration to your shell profile automatically

## 🤝 Contributing

Feel free to customize this script for your own use. Common modifications:

- Add your favorite applications
- Include project-specific tools
- Customize Git configuration
- Add additional shell aliases

## 📄 License

This is a personal setup script. Feel free to use and modify as needed.

## 👤 Author

**Muhammad Taqi (archtaqi)**
- GitHub: [@ArchTaqi](https://github.com/ArchTaqi)
- Email: taqi.arch@gmail.com

---

**Last Updated**: October 24, 2025
