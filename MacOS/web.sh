#!/usr/bin/env bash

# Install command-line tools using Homebrew.

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

brew install node
brew install yarn

brew install rustup

# Remove outdated versions from the cellar.
brew cleanup

npm install -g coffee-script
npm install -g grunt-cli
npm install -g jshint
npm install -g less


# PHP 
brew tap shivammathur/php
brew install shivammathur/php/php@7.3
brew link php@7.3

echo 'export PATH="/usr/local/opt/php@7.3/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/usr/local/opt/php@7.3/sbin:$PATH"' >> ~/.zshrc

## Globally 
curl -sS https://getcomposer.org/installer | php 
mkdir -p /usr/local/bin 
mv composer.phar /usr/local/bin/composer 
chmod +x /usr/local/bin/composer 
sudo composer self-update 

## Locally
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php







