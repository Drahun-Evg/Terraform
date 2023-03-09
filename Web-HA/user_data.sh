#!/bin/bash

yum update -y
yum install httpd -y
yum install git -y

myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`

git clone https://github.com/Sergey-Chernushevich/axit.git /var/www/html/
cp /var/www/html/axit/* /var/www/html/

sudo service httpd start
chkconfig httpd on
