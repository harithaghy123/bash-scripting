#!/bin/bash
yum install nginx
yum install nginx -y
sysyetmctl status nginx
systemctl restart nginx
systemctl start nginx
systemctl enable nginx
sudo apt-get update nginx

