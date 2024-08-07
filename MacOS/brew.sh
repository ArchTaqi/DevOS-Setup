#!/usr/bin/env bash

# Install command-line tools using Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc
# restart terminal
brew doctor


# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install a program that allows you to install mac apps
# 1. mas search [app name]
# 2. mas install [app number in the app store]
brew install mas 

# upgrade mac programs using `brew cu`
brew tap buo/cask-upgrade

# drivers
brew tap homebrew/cask-drivers


echo "Installing programs..."

# Setup Homebrew tap`
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions
brew tap cjbassi/gotop
brew tap neovim/neovim
brew tap sachaos/todoist
brew tap sashkab/python
brew tap wallix/awless




brew tap "adoptopenjdk/openjdk"
brew tap "buo/cask-upgrade"
brew tap "homebrew/bundle"
brew tap "homebrew/cask"
brew tap "homebrew/cask-drivers"
brew tap "homebrew/cask-fonts"
brew tap "homebrew/core"
brew install  "bat"
brew install  "python@3.9"
brew install  "cmake"
brew install  "openldap"
brew install  "curl"
brew install  "dash", link: false
brew install  "docker"
brew install  "docker-compose"
brew install  "ffmpeg"
brew install  "fish"
brew install  "folly"
brew install  "mas"
brew install  "neovim"
brew install  "nghttp2"
brew install  "node"
brew install  "pandoc"
brew install  "rsync"
brew install  "ssh-copy-id"
brew install  "tmux"
brew install  "watchman"
brew install  "wget"
brew install  "yarn"
brew install --cask --force "adoptopenjdk8"
brew install --cask --force "dash"
brew install --cask --force "displaylink"
brew install --cask --force "figma"
brew install --cask --force "font-fira-code"
brew install --cask --force "gitkraken"
brew install --cask --force "google-chrome"
brew install --cask --force "iterm2"
brew install --cask --force "kicad"
brew install --cask --force "kitty"
brew install --cask --force "lastpass"
brew install --cask --force "postman"
brew install --cask --force "skim"
brew install --cask --force "slack"
brew install --cask --force "spectacle"
brew install --cask --force "spotify"
brew install --cask --force "visual-studio-code"
brew install --cask --force "vlc"
brew install --cask --force "wkhtmltopdf"


##################################################
echo "Installing Softwares and Productivity tools"
##################################################
# Install Bash 4.
brew install bash
brew install bash-completion2

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew install --cask --force font-hack
brew install --cask --force font-fira-code
brew install --cask --force font-inconsolata
brew install --cask --force font-hack-nerd-font
brew install --cask --force font-meslo-nerd-font
brew install --cask --force font-source-code-pro
brew install --cask --force font-menlo-for-powerline
brew install --cask --force font-meslo-for-powerline
brew install --cask --force font-meslo-for-powerline
brew install --cask --force font-meslo-nerd-font-mono
brew install --cask --force font-fira-mono-for-powerline



# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install hub
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install tree
brew install webkit2png
brew install zopfli
brew install pkg-config libffi
brew install pandoc

# Dev Productivity Tools
brew install exa
brew install peco
brew install fish
brew install neovim


# Lxml and Libxslt
brew install libxml2
brew install libxslt
brew link libxml2 --force
brew link libxslt --force

# Install Heroku
brew install heroku/brew/heroku
heroku update

# Core casks
#brew cask install --appdir="/Applications" alfred
#brew cask install --appdir="~/Applications" java
#brew cask install --appdir="~/Applications" xquartz
brew cask install --appdir="~/Applications" postman

echo " Installing Terminal Utils"
brew cask install --appdir="~/Applications" vim
brew cask install --appdir="~/Applications" iterm2
# Theme to be Used
# https://draculatheme.com/iterm
brew install --force zsh
brew install --force tmux
brew install --force tree
brew install --force screen
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

brew install --cask keybase

# Development tool casks
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" atom
#brew cask install --appdir="/Applications" virtualbox
#brew cask install --appdir="/Applications" vagrant
#brew cask install --appdir="/Applications" macdown

# Misc casks
## Browsers
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
## Communication
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" zoom
brew cask install --appdir="/Applications" telegram
brew cask install --appdir="/Applications" whatsapp
brew cask install --appdir="/Applications" 1password
# Connections / Files
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" filezilla
brew cask install --appdir="/Applications" transmission

brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" spotify

brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" rectangle
brew cask install --appdir="/Applications" alt-tab
brew cask install --appdir="/Applications" firefox-developer-edition
brew cask install --appdir="/Applications" app-cleaner
brew cask install --appdir="/Applications" android-file-transfer
brew cask install --appdir="/Applications" android-platform-tools
brew cask install --appdir="/Applications" keepingyouawake
brew cask install --appdir="/Applications" discord
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" keka
brew cask install --appdir="/Applications" kap
brew cask install --appdir="/Applications" time-out
brew cask install --appdir="/Applications" gimp
brew cask install --appdir="/Applications" inkscape
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" insomnia



# Install Docker, which requires virtualbox
brew install docker
brew install boot2docker

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip qlimagesize webpquicklook suspicious-package quicklookase qlvideo


echo " Installing Golang"
# curl -O https://dl.google.com/go/go1.11.5.darwin-amd64.pkg
# mkdir ~/GoWorkspace
# tar -C ~/GoWorkspace -xzf go1.11.5.darwin-amd64.tar.gz
# # In ~/.bash_profile
# export GOPATH=$HOME/GoWorkspace
# export PATH=$PATH:$HOME/GoWorkspace/go/bin
# rm go1.11.5.darwin-amd64.tar.gz
# # install dep, which installs GoLang As Well
# brew install --force dep
# echo " Installing Rust"
# curl https://sh.rustup.rs -sSf | sh
# cargo install fd-find # A simple, fast and user-friendly alternative to 'find'
# cargo install fre # frerency search
# cargo install sd  # sed alternative
# echo " Installing Python"
# # Install Python
# brew install --force python3
# echo " Installing PHP"
# brew install --force composer
# brew install --force php
# echo " Installing Node + NPM + Yarn.. Cuz Node."
# brew install --force node@8
# brew install --force -g npm
# brew install --force yarn
# echo " Installing NPM Packages"
# npm i -g git-upload eslint serve vsce degit node-gyp
# npm i -g express express-generator parcel-bundler expo-cli firebase-tools
# npm i -g bower gulp gulp-cli grunt-cli foundation-cli
# npm i -g @adonisjs/cli @angular/cli create-react-app gatsby-cli @gridsome/cli @nestjs/cli @vue/cli
# echo " Installing Install TypeScript"
# npm install -g typescript tslint;
# echo " Installing Database / Tools"
# brew install --force redis
# brew install --force postgresql
# brew cask install --force pgadmin4
# brew install --force mysql@5.7, restart_service: true, link: true, conflicts_with: ['mysql']
# echo " Installing Webserver / REST tools / HTTP clients"
# brew install --force httpd, restart_service: true
# brew install --force curl
# brew install --force gotop
# brew install --force httpie
# brew install --force neovim
# brew install --force wget
# echo " Installing IDEs"
# brew install --cask --force textmate
# brew install --cask --force phpstorm
# brew install --cask --force pycharm-ce
# brew install --cask --force visual-studio-code
# echo " Installing DevOps Tools"
# brew install --force ansible
# #Virtualization
# brew install --cask --force virtualbox
# brew install --cask --force vagrant vagrant-manager
# # install docker, kubectl
# brew install --cask --force docker docker-compose docker-machine docker-completion docker-compose-completion
# brew install --force kubernetes-cli
# # Cloud CLIs
# brew install --force awless
# brew install --force awscli
# brew cask install --force google-cloud-sdk
# # Install AWS-IAM-AUTHENTICATOR
# curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.11.5/2018-12-06/bin/darwin/amd64/aws-iam-authenticator
# mv aws-iam-authenticator /usr/local/bin/aws-iam-authenticator
# chmod +x /usr/local/bin/aws-iam-authenticator


echo " Installing Productivity, Media and Security tools"
# Security
# Productivity
# Media
# brew install --cask --force imageoptim
# brew install --force gcc
# brew install --cask --force vlc
# brew install --force youtube-dl
# brew install --force ffmpeg


# Remove outdated versions from the cellar.
brew cleanup
