#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl status apache2
sudo apt-get install curl
cd /var/www/html
echo "<html><h1>This My Apache Server</h1></html>" > index.html
curl -4 icanhazip.com
