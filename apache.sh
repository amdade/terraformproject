#!/bin/bash

yum install httpd -y
echo "hello world" >> /var/www/html/index.html
systemctl start httpd
systemctl enable httpd
