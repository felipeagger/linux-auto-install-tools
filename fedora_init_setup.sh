#!/bin/bash

echo "Starting Setup Fedora"

# Add External Repos 
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf update -y && sudo dnf install dnf-plugins-core ansible git curl wget -y

ansible-playbook tools.yml
