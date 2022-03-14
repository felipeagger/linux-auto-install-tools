#!/bin/bash

echo "Installing podman & curl..."
sudo dnf install podman curl -y

echo "Installing distrobox..."
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh