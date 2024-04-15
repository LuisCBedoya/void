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

#INTEL (export LIBVA_DRIVER_NAME=i965) (export LIBVA_DRIVER_NAME=iHD)
$il mesa-dri vulkan-loader mesa-vulkan-intel intel-video-accel intel-media-driver linux-firmware-intel

#NVIDIA
$il nvidia nvidia-libs-32bit

#BASE
$il dbus elogind xsetroot xdo setxkbmap at-spi2-core p7zip gvfs ntfs-3g curl wget dialog mtools dosfstools nss-mdns avahi unzip tar

#PARA COMPILAR(OPCIONAL)
$il base-devel git pkg-config openssl-devel libtool autoconf automake cmake xtools ncurses-devel pkg-config python3-virtualenv python3-pip ripgrep libnotify android-tools 

#WORKSPACE
$il lxde

#AUDIO 
$il pulsemixer wireplumber pipewire rtkit 

#USER APP
$il kitty timeshift keepassxc

#FONTS, BROWSER AND OTHERS
$il noto-fonts-cjk noto-fonts-emoji noto-fonts-ttf noto-fonts-ttf-extra	qutebrowser 

#FONT FIX
$s ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
$s xbps-reconfigure -f fontconfig

clear
echo "Aplicando configuraciones..."
sleep 2s

#INICIAR SERVICIOS
$s ln -s /etc/sv/dbus /var/service/
$s rm -r /var/service/polkitd

echo -e '#autostart
\nif [ -d "$HOME/.local/bin" ] ; then
\n    PATH="$HOME/.local/bin:$PATH"
\nfi
\npipewire &
\nsetxkbmap latam &
\nexec dbus-run-session startlxde'> $HOME/.xinitrc

#PIPEWIRE_CONFIG
$s mkdir -p /etc/pipewire/pipewire.conf.d
$s ln -s /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
$s ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/

###
clear
echo "Instalación de VoidBsp-term Completada"
echo "Pulse cualquiera tecla para continuar..."
read tecla
clear
$s reboot
