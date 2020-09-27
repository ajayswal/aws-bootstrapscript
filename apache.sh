#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl status apache2
#sudo apt-get install curl
cd /var/www/html
sudo rm index.html
sudo echo "<html><h1>This My Apache Server</h1></html>" > index.html
curl -4 icanhazip.com
#  to remove apache2 completely from the ubuntu server command.Remove apache2 packages and dependencies
# sudo apt-get purge apache2 apache2-utils apache2.2-bin
#Check what's left:
#whereis apache2
