#!/bin/bash
#Author:
#    1vec
#Program:
#    initialize VPS on Ubuntu 16.04 through bash operations.
yum update -y
yum upgrade -y
yum install gcc zsh gdb git mariadb-server php php-fpm php-mysql httpd wordpress -y
chsh -s /bin/zsh
systemctl start httpd
systemctl enable httpd
systemctl start firewalld
systemctl enable firewalld
systemctl start mariadb
systemctl enable mariadb
firewall-cmd --add-service=http --zone=public --permanent
firewall-cmd --reload
rm -rf /var/www/html
ln -s /usr/share/wordpress /var/www/html
