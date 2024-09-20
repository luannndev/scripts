#!/bin/bash

echo "Updating system packages..."
sudo apt-get update -y

echo "Importing MongoDB public GPG key..."
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -

echo "Creating MongoDB list file..."
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

echo "Reloading package database..."
sudo apt-get update -y

echo "Installing MongoDB..."
sudo apt-get install -y mongodb-org

echo "Starting MongoDB..."
sudo systemctl start mongod

echo "Enabling MongoDB to start on boot..."
sudo systemctl enable mongod

echo "Checking MongoDB status..."
sudo systemctl status mongod

echo "MongoDB installation completed!"
