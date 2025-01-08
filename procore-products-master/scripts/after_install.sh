#!/bin/bash

# Restart Apache to apply changes
echo "Restarting Apache..."
sudo systemctl restart apache2

# Finish
echo "After install script completed successfully."
