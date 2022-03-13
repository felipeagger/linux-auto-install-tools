#!/bin/bash

echo "Installing podman..."
sudo dnf install podman curl -y

echo "Installing distrobox..."
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh

echo "distrobox creating fedora container"
distrobox create -Y --image fedora:35 --name fedora-dev 
distrobox-enter fedora-dev --no-tty

echo "Installing dev tools inside container..."

cat setup-container.sh | podman exec -i fedora-dev /bin/bash

echo "Ready To Code!!!"
echo "To Export instaled applications to your Host, execute: ./export.sh"
distrobox-enter fedora-dev