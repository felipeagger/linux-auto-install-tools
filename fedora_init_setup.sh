#!/bin/bash

echo "Starting Setup Fedora"

sudo dnf update && sudo dnf install ansible -y

# call ansible instalation
