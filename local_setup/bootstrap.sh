#!/bin/bash
echo "Adding RethinkDB repo and key..."
source /etc/lsb-release && echo "deb http://download.rethinkdb.com/apt $DISTRIB_CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list
wget -qO- https://download.rethinkdb.com/apt/pubkey.gpg | sudo apt-key add -
echo "Updating package list..."
sudo apt-get update
echo "Installing RethinkDB..."
sudo apt-get install rethinkdb
echo "Starting rethinkdb..."
rethinkdb --bind all --daemon
echo "Installing current version of Python3..."
sudo apt-get install g++ python3-dev
echo "Installing current version of pip..."
sudo apt-get install python3-pip
echo "Creating virtualenv..."
virtualenv --python=python3.5 venv
echo "Activating venv..."
source venv/bin/activate
echo "Installing current versions of pip and setuptools into venv..."
sudo pip install --upgrade pip setuptools
echo "Installing requirements into venv..."
sudo pip install -r requirements.txt
echo "Configuring bigchaindb..."
bigchaindb -y configure
echo "Starting bigchaindb..."
bigchaindb start