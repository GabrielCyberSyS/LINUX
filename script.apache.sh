#!/bin/bash
echo " Atualizando Servidor..."
apt-get update
apt-guet upgrade -y
apt-get install apache2 -y
apt-get instal unzip -y

echo " Baixando app aplicacao..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/arquive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp-R * /var/www/html/
