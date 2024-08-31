#!/bin/bash

echo "Atualizando servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando Apache (apache2)..."
apt-get install apache2 -y

echo "Baixando zip do site em /tmp..."
cd  /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Instalando unzip..."
apt-get install unzip -y

echo "Fazendo unzip do arquivo"
unzip main.zip

echo "Passando site para pasta do Apache"
cd linux-site-dio-main
cp -r * /var/www/html

echo "Configurações concluídas!"
