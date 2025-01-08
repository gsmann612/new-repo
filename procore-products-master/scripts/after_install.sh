#!/bin/bash

# Restart Apache to apply changes
echo "Restarting Apache..."
sudo systemctl restart httpd

# Finish
echo "After install script completed successfully."
