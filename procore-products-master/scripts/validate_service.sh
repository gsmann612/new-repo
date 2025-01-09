# Check the status of Apache
if systemctl is-active --quiet httpd; then
    echo "Apache is running."
    exit 0
else
    echo "Apache is not running. Checking for any errors..."
    sudo systemctl status httpd
    exit 1
fi
