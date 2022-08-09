# install xcode build tools
xcode-select --install

# install homebrew

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
