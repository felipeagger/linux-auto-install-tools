#!/bin/bash

echo "distrobox creating fedora container"
distrobox create -Y --image docker.io/library/fedora:35 --name fedora-dev 
distrobox-enter fedora-dev --no-tty

echo "Installing dev tools inside container..."

cat setup-container.sh | podman exec -i fedora-dev /bin/bash

echo "Ready To Code!!!"
echo "To Export instaled applications to your Host, execute: ./export.sh"
distrobox-enter fedora-dev