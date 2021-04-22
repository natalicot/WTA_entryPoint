#!/bin/bash

echo "installing node"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - || exit 1

sudo apt install nodejs || exit 1

# echo "cloning app from natalis repo"
# mkdir /home/azureuser/work || exit 1

sudo apt update

sudo apt install default-jre -y
sudo apt install default-jdk -y
sudo mkdir -p /home/azureuser/work
sudo chmod -R 777 /home/azureuser/work
sudo apt-get install zip unzip