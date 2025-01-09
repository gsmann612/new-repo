#!/bin/bash

set -e

# Update package list
echo "Updating package list..."
sudo yum update -y

# Install Apache if not already installed
if ! command -v httpd &> /dev/null; then
    echo "Installing Apache..."
    sudo yum install -y httpd
else
    echo "Apache is already installed."
fi

# Start and enable Apache service
echo "Starting and enabling Apache service..."
sudo systemctl start httpd
sudo systemctl enable httpd

# Finish
echo "Before install script completed successfully."
