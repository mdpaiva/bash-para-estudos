#!/usr/bin/env bash

echo "Preparando ambiente e atualizando o servidor . . ."

yum update
yum upgrade -y

echo "Instalando dependências . . ."
yum install httpd unzip -y

cd /tmp

echo "Baixando aplicação . . ."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Gerenciando arquivos . . ."
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Nada para fazer.
Concluído!"
