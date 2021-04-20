#!/bin/bash

echo "installing node"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - || exit 1

sudo apt install nodejs || exit 1

# echo "cloning app from natalis repo"
# mkdir /home/azureuser/work || exit 1
