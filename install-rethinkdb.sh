#!/bin/bash

sudo apt-get update -y

sudo apt-get install -y build-essential python

wget -qO- https://download.rethinkdb.com/repository/raw/pubkey.gpg | sudo apt-key add -

echo "deb http://download.rethinkdb.com/repository/ubuntu-$(lsb_release -cs) $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list

sudo apt-get update -y

sudo apt-get install -y rethinkdb

sudo cp /etc/rethinkdb/default.conf.sample /etc/rethinkdb/instances.d/instance1.conf

sudo sed -i 's/# bind=127.0.0.1/bind=all/g' /etc/rethinkdb/instances.d/instance1.conf

sudo /etc/init.d/rethinkdb restart
