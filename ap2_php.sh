#!/bin/bash

echo --------------------------------------------------
echo -				UPDATE PACKAGES			  		  -
echo --------------------------------------------------

apt-get update

echo --------------------------------------------------
echo -				INSTALL apache2 				  -
echo --------------------------------------------------

apt-get install -y apache2

sudo a2enmod rewrites
sudo ufw allow OpenSSH
sudo ufw allow in "Apache Full"

echo --------------------------------------------------
echo -				  INSTALL PHP					  -
echo --------------------------------------------------

sudo apt-get install software-properties-common
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt -y install php7.4-mysql php7.4-curl php7.4-json php7.4-cgi php7.4 libapache2-mod-php7.4
sudo systemctl restart apache2

#Creating info.php
echo  "<?php echo '<p align="center">PHP WORK!</p>'; ?>" > /var/www/html/info.php 



