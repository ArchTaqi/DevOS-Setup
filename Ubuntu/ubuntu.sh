#!/usr/bin/env bash

# Essentials packages
packages=(
  build-essential
  software-properties-common 
  ca-certificates
  curl
  wget
  vim
  git
  tmux
  gnome-tweaks
  gnome-shell-extensions
  chrome-gnome-shell
  chrpath libssl-dev 
  libxft-dev
  libfreetype6 
  libfreetype6-dev
  libfontconfig1 
  libfontconfig1-dev
  make
  libsqlite3-dev
  libmysqlclient-dev
  libpq-dev
  redis-tools
)
sudo apt-get -y install ${packages[@]}

#################
### Browswers ###
#################
curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome-stable_current_amd64.deb &&
rm -f google-chrome-stable_current_amd64.deb
sudo snap install firefox

# Text Editor & IDEs
ids_pkg=(
  'code --classic'
  'sublime-text'
  'phpstorm'
  'datagrip'
  'webstorm'
  'android-studio'
  'pycharm-community'
)
for pkg in "${ids_pkg[@]}"; do sudo snap install $pkg --classic; done

# Terminal Utils and CLIs
cli_pkg=( 
  'http' 
  'htop'
  'gotop'
  'curl-ijohnson' 
  'heroku --classic' 
  'aws-cli --classic' 
  'google-cloud-sdk --classic' 
  'kubectl --classic'
)
for pkg in "${cli_pkg[@]}"; do sudo snap install $pkg; done

# Programming Languages
coding_pkg=(
  'jupyter'
  'terraform'
  'go --classic'
  'ruby --classic'
  'rustup --edge --classic'
  'mysql-workbench-community --beta'
  'influxdb-ijohnson'
  'cookiecutter --edge'
  )
for pkg in "${coding_pkg[@]}"; do sudo snap install $pkg; done

sudo snap install flutter --classic
flutter channel dev
flutter upgrade
flutter config --enable-linux-desktop


# DBs
db_pkg=(postbird 'sqlitebrowser --edge' 'redis-desktop-manage')
for pkg in "${db_pkg[@]}"; do sudo snap install $pkg; done

# Social telegram,  slack, skype
social_pkg=(
  'yakyak'
  'zoom-client'
  'skype --classic'
  'slack --classic'
  'telegram-desktop'
  'whatsapp-for-linux'
  'kesty-whatsapp'
  'teams-for-linux'
  'icloud-for-linux'
  )
for pkg in "${social_pkg[@]}"; do sudo snap install $pkg; done

# Whatsapp
curl -O https://www.thefanclub.co.za/sites/default/files/public/downloads/whatsapp-webapp_1.0_all.deb && sudo dpkg -i whatsapp-webapp_1.0_all.deb && rm -f whatsapp-webapp_1.0_all.deb


# Productivity & Utilities**
prod_and_util_pkg=(
    'okular'
    ,buka'
    'pdfmixtool'
    'postman'
    'termius-app'
    'drawio'
    'filezilla --beta'
    'xournalpp --edge'
    'asciinema --classic'
    'simple-scan --classic'
    )
for pkg in "${prod_and_util_pkg[@]}"; do sudo snap install $pkg; done

# Photo and video** [ vlc, gimp, spotify, vidcutter, inkscape, obs-studio, shotcut, ffmpeg, youtube-dl]
photo_and_video_pkg=(
    vlc 
    gimp  
    deepin-voice-recorder  
    inkscape 
    obs-studio 
    ffmpeg 
    youtube-dl 
    gydl
    gnome-easytag
    shotcut --classic
    sweethome3d-homedesign
)
for pkg in "${photo_and_video_pkg[@]}"; do sudo snap install $pkg; done

sudo snap install cacher
sudo snap install evince
sudo snap install speedy-duplicate-finder
sudo snap install gedit
sudo snap install commandeer

sudo snap install panorama

sudo snap install miro --edge
sudo snap install productivity-timer
sudo snap install adguard-home


sudo snap install easy-disk-cleaner
sudo snap install disk-space-saver
sudo snap install newrelic-cli


sudo snap install postgresql10

# # Personalisation** [ ]
sudo snap install communitheme
sudo add-apt-repository -y ppa:mc3man/trusty-media  
sudo apt-get update  
sudo apt-get install -y gpac frei0r-plugins

# ####################
# # Development shit #
# ####################

echo "Installing Ansible"
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install -y ansible

echo "Installing Vagrant and Virtual box"
sudo apt-get install -y nfs-kernel-server nfs-common
sudo apt-get install -y virtualbox virtualbox-dkms vagrant
echo "Install Apache and Allow in Firewall"
sudo apt-get update
sudo apt-get install apache2
sudo apache2ctl configtest
sudo ufw allow in "Apache Full"

###########
### PHP ###
############
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install -y php libapache2-mod-php php-common php-sqlite3 php-mysql php-gmp php-curl php-intl php-mbstring php-xmlrpc php-soap php-ldap php-gd php-bcmath php-xml php-cli php-zip

# ##########
# # Python #
# ##########
sudo apt-get install -y python3-pip python3-setuptools python3-wheel python3-all-dev libffi-dev
python3 -m pip install --user -U pipenv pipx
python3 -m pipx ensurepath


#############
# Databases #
#############

# PostgreSQL
sudo apt update && sudo apt install -y postgresql postgresql-contrib
#sudo -i -u postgres
#psql

# MySQL, https://linuxconfig.org/install-mysql-on-ubuntu-20-04-lts-linux
sudo apt install -y mysql-client mysql-server
sudo mysql_secure_installation

# ##########
# # DevOps #
# ##########
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.docker.com/linux/ubuntu $UBUNTU_CODENAME stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
# Don't require sudo for Docker
sudo groupadd docker
sudo usermod -aG docker $USER
# Run Docker on boot
sudo systemctl enable docker

# #######################################################
# ## ZShell #
# #######################################################
sudo apt-get install fonts-powerline zsh zsh-theme-powerlevel9k
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> $HOME/.zshrc

# Change shell
zsh
chsh -s $(which zsh)

# oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# plugins=(zsh-autosuggestions zsh-syntax-highlighting)


## Theme Combos
cd ~ && sudo apt-get install --yes git && git clone https://github.com/surajmandalcell/elementary-x.git  ~/.themes/elementary-x && mkdir ~/.icons && cd ~/.icons && git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git && cd ~ && gsettings set org.gnome.desktop.interface gtk-theme 'elementary-x' && gsettings set org.gnome.desktop.interface icon-theme 'la-capitaine-icon-theme' && gsettings set org.pantheon.desktop.gala.appearance button-layout 'close,minimize,maximize'
sudo apt-get install --yes software-properties-common && sudo apt-add-repository --yes ppa:philip.scott/elementary-tweaks && sudo apt-get install --yes elementary-tweaks

# # Use Monokai gnome-terminal colours
git clone git://github.com/pricco/gnome-terminal-colors-monokai.git && cd gnome-terminal-colors-monokai && bash install.sh && cd .. && rm -rf gnome-terminal-colors-monokai

# # Set keys permissions
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa

 ## Clean up
echo "Cleaning Up" &&
popd &&
rm -rf $HOME/new_ubuntu_temp_and_a_random_string &&
sudo apt-get -f install &&
sudo apt-get autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean

# Update all other packages
sudo apt-get -y dist-upgrade

# OMG FINALLY
echo 'ALL DONE!'
echo ''
echo '▒▒▒▒▒▒▒▒█▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█ '
echo '▒▒▒▒▒▒▒█░▒▒▒▒▒▒▒▓▒▒▓▒▒▒▒▒▒▒░█ '
echo '▒▒▒▒▒▒▒█░▒▒▓▒▒▒▒▒▒▒▒▒▄▄▒▓▒▒░█░▄▄ '
echo '▒▒▄▀▀▄▄█░▒▒▒▒▒▒▓▒▒▒▒█░░▀▄▄▄▄▄▀░░█ '
echo '▒▒█░░░░█░▒▒▒▒▒▒▒▒▒▒▒█░░░░░░░░░░░█ '
echo '▒▒▒▀▀▄▄█░▒▒▒▒▓▒▒▒▓▒█░░░█▒░░░░█▒░░█ '
echo '▒▒▒▒▒▒▒█░▒▓▒▒▒▒▓▒▒▒█░░░░░░░▀░░░░░█ '
echo '▒▒▒▒▒▄▄█░▒▒▒▓▒▒▒▒▒▒▒█░░█▄▄█▄▄█░░█ '
echo '▒▒▒▒█░░░█▄▄▄▄▄▄▄▄▄▄█░█▄▄▄▄▄▄▄▄▄█ '
echo '▒▒▒▒█▄▄█░░█▄▄█░░░░░░█▄▄█░░█▄▄'
