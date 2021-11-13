#!/bin/sh

sudo dnf update -y
sudo dnf install gnome-tweak-tool -y
# Install Gnome Shell extensions Dash to dock
echo "Activate RPMFusion repo"
sudo rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-28.noarch.rpm -y
echo "installing vlc"
sudo dnf install vlc -y
echo "installing docky"
sudo dnf install docky -y
echo "installing unzip"
sudo dnf install unzip 
echo "installing java"
sudo dnf install icedtea-web java-openjdk
echo "instaling gimp"
sudo dnf install gimp
echo "installing pidgin"
sudo dnf install pidgin
echo "installing q bittorrent"
sudo dnf install qbittorrent
echo "installing virtualbox"
sudo dnf install VirtualBox
echo "installing youtube-dl"
sudo dnf install youtube-dl
echo "installing simple scan"
sudo dnf install simple-scan
echo "installing mediawriter"
sudo dnf install mediawriter
echo "installing gnome music"
sudo dnf install gnome-music
 
echo "installing dropbox"
sudo dnf install dropbox nautilus-dropbox
 
echo "Steam for Gaming on Linux"
sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-steam.repo
sudo dnf -y install steam
echo "installing spotify client"
sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
sudo dnf install spotify-client
echo "Fedy is a graphical tool which allows you to tweak your Fedora system "
sudo dnf install -y https://dl.folkswithhats.org/fedora/$(rpm -E %fedora)/RPMS/fedy-release.rpm
sudo dnf install -y fedy


echo "Installing Git "
sudo yum install -y git 
sudo git config --global user.name "Muhammad Taqi"
sudo git config --global user.email "taqi.official@gmail.com"
echo "Done installing Git "


echo "Installing vlc player "
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install vlc
sudo dnf install python-vlc npapi-vlc (optionals)
echo "Done installing vlc player "


echo "Installing httpd "
sudo dnf install httpd
sudo systemctl enable httpd.service
sudo systemctl start httpd.service
sudo apachectl reload
sudo systemctl restart httpd.service
echo "Done installing httpd "

echo "Installing python3 "
sudo dnf install python3 python3-setuptools python3-pip python3-wheel python3-virtualenv
sudo dnf install python3-django python3-django-doc python3-django-angular-doc python3-docs
python3 --version
pip3 install django==1.10
echo "Done installing python3 "

echo "Installing VirtualBox 5.1 on Fedora 25"
su -
cd /etc/yum.repos.d/ && sudo -y wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
dnf install binutils gcc make patch libgomp glibc-headers glibc-devel
dnf install "kernel-devel-`uname -r`"
dnf install "kernel-headers-`uname -r`"
dnf install VirtualBox akmod-VirtualBox
echo "Done installing VirtualBox 5.1 on Fedora 25"



echo "installing NGINX "
sudo dnf install nginx
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx
echo "Done installing NGINX "

echo "installing Jekyll "
sudo dnf install ruby-devel
sudo gem install jekyll
echo "Done installing Jekyll "

