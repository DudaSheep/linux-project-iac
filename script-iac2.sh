#!/bin/bash

# IaC - Script de Provisionamento de um Servidor Web (Apache)
echo "Atualização o servidor e instalando apache..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivo da aplicação..."
cd /tmp
wget https://github.com/XXXXXX/linux-site-dio/archive/main.zip
unzip main.zip

cd linux-site-dio-main
echo "Copiando arquivos para o apache..."
cp -R * /var/www/html/  

echo "Finalizado"