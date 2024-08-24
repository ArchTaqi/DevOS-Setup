# https://formulae.brew.sh/
# install xcode build tools
xcode-select --install
# Install command-line tools using Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc
# restart terminal
brew doctor
# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade --all

##########################
######   Setup Git tool   #########
##########################
echo "installing git tools"
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
echo "configuring git"
git config --global user.name "archtaqi"
git config --global user.email "taqi.arch@gmail.com"
git config --global core.editor vim
git config --global core.excludesfile ~/.gitignore
# git config --list

##########################
#######   Setup Fronts   #########
##########################
echo "setting up powerline fonts"
cd ~
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ~
rm -rf fonts
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

##########################
########   Setup IDEs   #########
##########################
echo "Setting Up IDEs"
brew install --cask visual-studio-code
brew install --cask cursor

##########################
###  Setup Work & Productvity Tools  ##
##########################
echo "Setting Work & Productvity Tools"
brew install --cask brave-browser
brew install --cask microsoft-teams
brew install --cask telegram
brew install --cask discord
brew install --cask slack
brew install --cask notion
brew install --cask notion-calendar
brew install --cask drawio
brew install --cask vlc
brew install --cask 4k-video-downloader
brew install --cask 4k-video-to-mp3
brew install --cask insomnia
brew install --cask app-cleaner
brew install --cask transmission

##########################
###  Setup Development Tools  ######
##########################
echo " Installing Terminal Utils"
brew install vim
brew install neovim
brew install --cask iterm2
brew install --force zsh
brew install --force tmux
brew install --force tree
brew install --force screen
# Install Heroku
brew install heroku/brew/heroku
heroku update
# Install Bash 4.
brew install bash
brew install bash-completion2
echo "Setting Development Tools"
brew install mas
brew install curl
brew install gotop
brew install httpie
brew install wget
brew install awscli
brew install --cask google-cloud-sdk
brew install hub
brew install p7zip
brew install --cask postman


##########################
######## Install Golang  ########
##########################
echo "Install Golang"
brew update
brew install golang
brew upgrade golang
go version

##########################
######## Install Rust  ##########
##########################
echo "Install Rust"
brew install rustup

##########################
######## Install Node  #########
##########################
# install node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
nvm install --lts
nvm use --lts
# global npm installs
npm install -g lite-server gitignore license
npm i -g yarn pm2
npm i -g prettier eslint

###########################
######## Install Python  #########
##########################
echo "------------------------------"
echo "Setting up python 3 environment."
brew install python3
brew install pipx
brew install --force python3@3.11
brew link python3
brew postinstall python3
brew install pipenv
brew install pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then   
  eval "$(pyenv init -)" 
fi
exec "$SHELL"
echo "------------------------------"

###########################
######## Install docker  #########
##########################
brew install docker
brew install docker-buildx
brew install docker-compose

###########################
######## Install Terraform  ########
##########################
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install terragrunt
brew install terraformer
brew install terrascan

###########################
########## Install K8s  #########
##########################
brew install kubectl
# curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.6/bin/darwin/amd64/kubectl
# chmod +x ./kubectl
# sudo mv ./kubectl /usr/local/bin/kubectl
brew install hyperkit
brew install minikube
brew install kustomize


## OZH 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
plugins=(
  git
  vscode
  sublime
  dotenv
  macos
  heroku
  python
  node
  yarn
  virtualenv
  golang
  aws
  docker
  terraform
  tmux
  ssh
  screen
  rust
  rvm
  rsync
  repo
  redis-cli
  pylint
  pyenv
  pre-commit
  poetry
  poetry-env
  pm2
  pip
  pep8
  nvm
  iterm2
  npm
  nodenv
  pipenv
  homestead
  helm
  gitignore
  bun
  brew
  1password
  ansible
)
