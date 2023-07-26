#!/bin/bash

# Update packages
sudo apt update && sudo apt upgrade -y

# Install Apache and Certbot for Ubuntu
sudo apt install -y apache2 python3-certbot-apache

# Enable MariaDB and change root password
sudo apt install -y mariadb-server=10.11

sudo systemctl enable mariadb

sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';"
