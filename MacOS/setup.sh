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


# install homebrew
brew install git
brew install --cask visual-studio-code
brew install --cask cursor
brew install  "curl"


brew install --cask microsoft-teams
brew install --cask telegram
brew install --cask discord
brew install --cask slack
brew install --cask vlc
brew install --cask brave-browser
brew install --cask postman
brew install --cask 4k-video-downloader
brew install --cask 4k-video-to-mp3
brew install --cask notion
brew install --cask notion-calendar

## Docker
brew install docker
brew install docker-buildx
brew install docker-compose
## Terraform 
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install terragrunt
brew install terraformer
brew install terrascan

## Security
#### Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues https://github.com/aquasecurity/trivy
brew install aquasecurity/trivy/trivy

# K8s
brew install kubectl
# curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.6/bin/darwin/amd64/kubectl
# chmod +x ./kubectl
# sudo mv ./kubectl /usr/local/bin/kubectl
brew install hyperkit
brew install minikube
brew install kustomize




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
