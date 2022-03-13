#!/bin/bash

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update 
sudo dnf install go git curl wget java-11-openjdk-devel make code firefox -y

wget https://dbeaver.io/files/dbeaver-ce-latest-stable.x86_64.rpm
sudo rpm -Uvh ./dbeaver-ce-latest-stable.x86_64.rpm

wget https://dl.pstmn.io/download/latest/linux64 -O postman-linux-x64.tar.gz
sudo tar xvzf postman-linux-x64.tar.gz -C /opt
sudo ln -s /opt/Postman/Postman /usr/bin/postman
sudo cp /opt/Postman/app/resources/app/assets/icon.png /usr/share/icons/postman.png

sudo echo "[Desktop Entry]
Name=Postman
GenericName=API Client
X-GNOME-FullName=Postman API Client
Comment=Make and view REST API calls and responses
Keywords=api;
Exec=/opt/Postman/Postman
Terminal=false
Type=Application
Icon=/opt/Postman/app/resources/app/assets/icon.png
Categories=Development;Utilities;" > /usr/share/applications/postman.desktop