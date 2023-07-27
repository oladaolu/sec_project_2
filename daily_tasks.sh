#!/bin/bash

# CentOS Daily Tasks
function centos_tasks() {
    # Task 1: Login/ssh and do package updates
    yum update -y

    # Task 2: Install httpd and certbot
    yum install -y httpd certbot

    # Task 3: As "apache" user stop http server
    sudo -u apache systemctl stop httpd

    # Task 4: As "apache" user verify SSL cert validity
    sudo -u apache certbot renew --dry-run

    # Task 5: As "apache" user start http server
    sudo -u apache systemctl start httpd

    # Add any other specific tasks for CentOS here
}

# Ubuntu Daily Tasks
function ubuntu_tasks() {
    # Task 1: Login/ssh and do package updates
    apt-get update -y

    # Task 2: Install MariaDB 10.11
    apt-get install -y mariadb-server=1:10.3.31-0ubuntu0.18.04.1

    # Task 3: Enable MariaDB
    systemctl enable mariadb

    # Task 4: Change root password of MariaDB (Replace 'password' with the desired password)
    mysql -u root -p"$DB_PASSWORD" -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_PASSWORD';"

    # Add any other specific tasks for Ubuntu here
}

# Alpine Daily Tasks
function alpine_tasks() {
    # Task 1: Login/ssh and do package updates
    apk update

    # Task 2: Install Docker on Alpine
    apk add docker

    # Task 3: Bring up a "Hello World" container
    docker run hello-world

    # Add any other specific tasks for Alpine here
}

# Determine the distribution and call the appropriate function
if [ -f "/etc/redhat-release" ]; then
    # If "/etc/redhat-release" exists, it's CentOS or Red Hat
    centos_tasks
elif [ -f "/etc/lsb-release" ]; then
    # If "/etc/lsb-release" exists, it's Ubuntu
    ubuntu_tasks
elif [ -f "/etc/alpine-release" ]; then
    # If "/etc/alpine-release" exists, it's Alpine
    alpine_tasks
else
    echo "Unsupported distribution or cannot determine the distribution."
fi
