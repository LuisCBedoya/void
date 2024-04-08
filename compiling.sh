#!/bin/bash

######Variables#####
s="sudo"
il="sudo xbps-install -y"
#####################
clear

echo "|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|"
echo "| VoidBSP Installer |"
echo "|___________________|"
echo ""
echo ""
sleep 2s
echo "Introduzca contraseña para continuar"
sudo -k
if sudo true; then
	clear
	echo "Iniciando Instalación..."
	sleep 2s
else
	clear
	echo "Debe introduccir contraseña para continuar"
	exit 1
fi

#UPDATE REPO
$s xbps-install -Sy

#REPOS NON-FREE Y MULTILIB(32bit)
$il void-repo-{nonfree,multilib,multilib-nonfree}
$s xbps-install -Sy
#PARA COMPILAR(OPCIONAL)
$il base-devel git pkg-config openssl-devel libtool autoconf automake cmake xtools ncurses-devel pkg-config xorg-minimal xorg-fonts xorg-video-drivers setxkbmap 
# Clonar el repositorio void-packages
git clone --depth 1 https://github.com/void-linux/void-packages.git
#cd void-packages
# Instalar los paquetes de arranque
#./xbps-src binary-bootstrap
#$s mkdir /tmpfs/xbps
#$s mount -t tmpfs -o size=4G tmpfs /tmpfs/xbps/
#$s reboot
