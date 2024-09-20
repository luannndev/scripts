#!/bin/bash

echo "Updating system packages..."
sudo apt-get update -y

echo "Installing Apache2..."
sudo apt-get install -y apache2

echo "Installing PHP and necessary modules..."
sudo apt-get install -y php libapache2-mod-php php-mysql

echo "Restarting Apache to load PHP module..."
sudo systemctl restart apache2

echo "Installing MySQL Server..."
sudo apt-get install -y mysql-server

echo "Securing MySQL installation..."
sudo mysql_secure_installation

echo "Installing phpMyAdmin..."
sudo apt-get install -y phpmyadmin

echo "Configuring Apache for phpMyAdmin..."
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

echo "Enabling Apache mod_rewrite and restarting Apache..."
sudo a2enmod rewrite
sudo systemctl restart apache2

echo "Checking Apache status..."
sudo systemctl status apache2

echo "Checking PHP version..."
php -v
