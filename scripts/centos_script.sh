#!/bin/bash

# Update packages
sudo yum update -y

# Install httpd and certbot
sudo yum install -y httpd certbot

# Stop the http server as the "apache" user
sudo -u apache systemctl stop httpd

# Verify SSL cert validity as the "apache" user
sudo -u apache certbot certificates

# Start the http server as the "apache" user
sudo -u apache systemctl start httpd
