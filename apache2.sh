#!/bin/bash
#Install Apache2
apt install apache2
#Enabe apache Service
systemctl enable apache2
#Make Apache look for an index.php file first.
sed -i 's/^DirectoryIndex index.html.*/DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm/' /etc/apache2/mods-enabled/dir.conf
#Restart Apache Service
systemctl restart apache2
#Copy custom file
cp 001-custom.conf /etc/apache2/sites-available/
echo "Apache sucessfully installed"
