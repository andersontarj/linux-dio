#!/bin/bash
# Name: Script IaC

echo "Atualizando o Servidor..."
sleep 2
apt update
apt upgrade -y
echo ''

echo 'Instalando os pacotes necessários...'
apt install apache2 unzip -y
echo ''

echo "Download dos arquivos necessário..."
sleep 2
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo ''

echo "Descompactando e copiando os arquivos..."
unzip main.zip
cd linux-site-dio-main
cp -vR * /var/www/html/
echo ''
echo "Fim..."