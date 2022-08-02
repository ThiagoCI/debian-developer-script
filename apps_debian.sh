#!/usr/bin/env bash
# sudo chmod +x apps_debian.sh
# APP_PATH_DOWNLOADS="$HOME/Downloads/Apps"

update(){
    sudo apt update
}

#Dependences
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
add-apt-repository ppa:flatpak/stable

update()

apt install software-properties-common apt-transport-https wget -y
#flatpak
apt install flatpak -y
#app flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#update flatpack
flatpak update -y



echo "INSTALANDO DOCKER"
apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
update()
apt-cache policy docker-ce
apt install docker-ce -y


#Developer
# VSCode
sudo apt install code -y

# Azure storage explorer
snap connect storage-explorer:password-manager-service :password-manager-service

# Postman
flatpak install https://dl.flathub.org/repo/appstream/com.getpostman.Postman.flatpakref -y

# RESP.app - GUI for Redis
flatpak install https://dl.flathub.org/repo/appstream/app.resp.RESP.flatpakref -y

#Browser

#Microsoft Edge
flatpak install https://dl.flathub.org/repo/appstream/com.microsoft.Edge.flatpakref -y

#Google Chrome

flatpak install flathub com.google.Chrome
flatpak install https://dl.flathub.org/repo/appstream/com.google.Chrome.flatpakref -y

#Tor Browser
flatpak install https://dl.flathub.org/repo/appstream/com.github.micahflee.torbrowser-launcher.flatpakref -y

############

#Entreteriment

#Spotifypos
flatpak install https://dl.flathub.org/repo/appstream/com.spotify.Client.flatpakref -y

############

#Prod

#Clockify
wget --no-check-certificate https://clockify.me/downloads/Clockify_Setup.deb -P /tmp
apt install /tmp/./Clockify_Setup.deb -y

update()
flatpak update -y && apt dist-upgrade && apt autoclean -y && apt autoremove -y