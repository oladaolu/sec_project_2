#!/bin/bash

# Update packages
sudo apk update && sudo apk upgrade

# Install Docker on Alpine
sudo apk add docker

# Bring up a container "Hello world"
sudo docker run hello-world
