#!/bin/bash

set -e

# Update package list
echo "Updating package list..."
sudo apt-get update

# Install Apache if not already installed
if ! command -v apache2 &> /dev/null; then
    echo "Installing Apache..."
    sudo apt-get install -y apache2
else
    echo "Apache is already installed."
fi

# Enable necessary Apache modules
echo "Enabling necessary Apache modules..."
sudo a2enmod rewrite

# Configure firewall
echo "Configuring firewall..."
sudo ufw allow 'Apache Full'

# Finish
echo "Before install script completed successfully."
