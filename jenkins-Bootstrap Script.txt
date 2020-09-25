#!/bin/bash
sudo apt-get update
sudo apt install openjdk-8-jre-headless -y
sudo apt-get update
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins -y --allow-unauthenticated
sudo systemctl start jenkins
