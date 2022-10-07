#! /bin/bash

echo "Atualizando os repositorios."
apt-get update
apt-get upgrade -y

echo "Instalando aplicações necessárias."
apt-get install apache2 -y
apt get install unzip -y

echo "Baixando arquivos do repositorio do Github."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /linux-site-dio-main
cp -R * /var/www/html

echo "Fim."