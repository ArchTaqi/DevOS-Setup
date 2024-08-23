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


# install homebrew
brew install git
brew install --cask visual-studio-code
brew install  "curl"


brew install --cask microsoft-teams
brew install --cask telegram
brew install --cask discord
brew install --cask slack
brew install --cask vlc
brew install --cask brave-browser
brew install --cask postman




# install homebrew formulae
brew install ffmpeg
brew install imagemagick


# install homebrew casks

# setup bash_profile and other dot files
cd ~

# configure git

git config --global user.name archtaqi

git config --global user.email taqi.arch@gmail.com

git config --global core.editor vim

# install node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh | bash
nvm install lts
nvm install latest

# global npm installs
nvm use latest
npm install -g lite-server gitignore license

# create dev folder
mkdir ~/dev



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
