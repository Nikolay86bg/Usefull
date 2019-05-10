#!/bin/bash -e
# IMPORTANT. My phpstom installation exists on /opt/phpstorm.
# IMPORTANT. Run with sudo!
# Early Access program: https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program
# For stable releases try: https://data.services.jetbrains.com/products/download?code=PS&platform=linux

echo -n "Please enter the PhpStorm download url (eg https://download-cf.jetbrains.com/webide/PhpStorm-2019.1.2.tar.gz): "
read url
 
# Download file from url
echo "Downloading PhpStorm to ~/Desktop"
cd ~/Desktop
wget ${url} --no-check-certificate
tar -xzf ~/Desktop/PhpStorm*.tar.gz
rm ~/Desktop/PhpStorm*.tar.gz

# Remove old Phpstorm
echo "Removing old PhpStorm"
rm -rf /opt/phpstorm

# Copy new Phpstorm
echo "Copying new PhpStorm"
sudo mv ~/Desktop/PhpStorm* /opt/phpstorm

# Finish
echo "New PhpStorm has been installed!"
