#!/bin/bash
sudo apt-get update
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-8-jdk
sudo apt-get update
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins -y --allow-unauthenticated
sudo systemctl start jenkins
sudo su
echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> /etc/profile
echo "PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile  ## to reload the configuration
exit
