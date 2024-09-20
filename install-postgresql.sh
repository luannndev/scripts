#!/bin/bash

sudo apt-get update -y

sudo apt-get install -y postgresql postgresql-contrib

sudo -u postgres createuser --interactive

sudo -u postgres createdb mydb

sudo -u postgres psql
\password myuser
\q

sudo service postgresql restart
