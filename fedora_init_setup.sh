#!/bin/bash

echo "Starting Setup Fedora"

sudo dnf update -y && sudo dnf install ansible git -y

ansible-playbook tools.yml
