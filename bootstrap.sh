#!/usr/bin/env bash

echo "Provision VM START"
echo "=========================================="

sudo apt-get update
sudo apt-get upgrade

#install build tools
sudo apt-get install -y build-essential git


curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list


#install mongo db / nodejs
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo apt-get -y install nodejs

#install base npm packages
sudo npm install -g bower
sudo npm install -g grunt
sudo npm install -g grunt-cli
sudo npm install -g express
sudo npm install -g yo

echo ""
echo "=========================================="
echo "Node setup:"
node -v
echo "Provision VM finished"
