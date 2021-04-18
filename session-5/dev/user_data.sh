#!/bin/bash
sudo yum install httpd -y
sudo yum systemctl enable httpd
sudo systemctl restart httpd
sudo echo "Hello from ${environment} Instance" > /var/www/html/index.html
sudo chown -R  apache:apache /var/www/html/
    