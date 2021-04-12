#!/bin/bash

echo "installing node"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - || exit 1

sudo apt install nodejs || exit 1

echo "cloning app from natalis repo"
mkdir myApp || exit 1

cd myApp/ || exit 1

git clone https://natalicot@dev.azure.com/natalicot/SELA_Bootcamp/_git/WeightTracker || exit 1

cd WeightTracker/ || exit 1

echo "installing npm"
npm install || exit 1

echo "running init DB"
npm run initdb || exit 1

echo "installing PM2"
sudo npm install pm2@latest -g || exit 1

echo "Running the app on PM2"
pm2 start src/index.js || exit 1