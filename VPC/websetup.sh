#!/bin/bash
yum update -y
yum install httpd wget unzip tmux -y
systemctl start httpd
systemctl enable httpd
cd /tmp/
wget https://www.tooplate.com/zip-templates/2119_gymso_fitness.zip
unzip -o 2119_gymso_fitness.zip
cp -r 2119_gymso_fitness/* /var/www/html/
systemctl restart httpd

ls /var/www/html/

[client]
port = 3306

[mysqld]
bind-address = 0.0.0.0
port = 3306

