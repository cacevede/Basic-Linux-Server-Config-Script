#!/bin/bash
# SO Instalado Ubutun 18.04.3
# Otorgar permisos de admin
echo '######ADMIN MODE######'
sleep 1.5
sudo su
echo '######UPDATE S.O. REPS######'
# Actualizacion de los paquetes del sistema operativo
sudo apt update
# Uso de PPA (Personal Package Archive) para la instalacion de NodeJS version 10.x LTS
echo '######PPA NODEJS NODESOURC3 FILE######'
cd ~
sleep 1.5
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
# Ejecucion de archivo bash generado con cURL.
echo '######NODESOURCE_SETUP######'
sudo bash nodesource_setup.sh
# Instalacion NodeJS usando el PPA
echo '######NODEJS INSTALL######'
sleep 1.5
sudo apt install nodejs
# Instalacion de build essential para uso de algunos paquetes que lo requieren
sudo apt install build-essential
# Instalacion de un servidor de MySQL
echo '######MySQL INSTALL######'
sleep 1.5
sudo apt install mysql-server
# Configurar MySQL
echo '######MySQL CONFIG######'
sleep 1.5
sudo mysql_secure_installation
# Lo siguiente es la creacion del directorio y la inicializacion del proyecto
# mkdir nombre_del_directorio
# npm init
# Instalacion de algunos paquetes
# express: ambito de produccion
# npm install express --save
# morgan: ambito de produccion
# npm install morgan --save
# nodemon: ambito de desarrollo (este se puede instalar de manera global)
# npm install nodemon -D

