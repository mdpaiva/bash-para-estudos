#!/usr/bin/env bash

if command -v apt-get &> /dev/null; then
    echo "Sistema baseado em Debian detectado"
    echo "Preparando ambiente e atualizando servidor . . ."
    apt-get update
    apt-get upgrade -y
    echo "Instalação de dependências . . ."
    apt-get install apache2 unzip -y
    cd /tmp
    echo "Baixando aplicação . . ."
    wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
    echo "Gerenciando arquivos . . ."
    unzip main.zip
    cd linux-site-dio-main
    cp -R * /var/www/html/
    echo "Concluído!"

elif command -v yum &> /dev/null; then
    echo "Sistema baseado em Red Hat detectado"
    echo "Preparando ambiente e atualizando servidor . . ."
    yum update -y
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
    echo "Concluído!"
else
    echo "Sistema não suportado automaticamente"
    exit 1
fi
