#!/bin/bash -xe
sudo apt update
sudo apt install nginx --yes
sudo cp /home/ubuntu/index.html /var/www/html/index.html