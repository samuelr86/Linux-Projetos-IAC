#!/bin/bash

echo "Atualizando o servidor...."
apt-get update && upgrade -y

echo "Instalando aplicativos...."
apt-get install apache2 unzip -y

echo "Baixando arquivo...."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip 

echo "Disponibilizando o arquivo na rede...."
cd linux-site-dio
cp -R * /var/www/html

echo "Finalizado!"
