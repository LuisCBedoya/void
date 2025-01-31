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

#MINIMAL XORG
$il xorg-minimal xorg-fonts xorg-video-drivers 

#COMPILAR(OPCIONAL)
$il base-devel git 

#BASE
$il dbus elogind xsetroot xdo setxkbmap at-spi2-core p7zip gvfs ntfs-3g curl wget sysfsutils libavcodec ffmpeg

#INTEL (export LIBVA_DRIVER_NAME=i965) (export LIBVA_DRIVER_NAME=iHD)
$il mesa-intel-dri libva-intel-driver vulkan-loader mesa-vulkan-intel intel-video-accel intel-media-driver linux-firmware-intel xf86-video-intel

#NVIDIA
$il nvidia nvidia-libs-32bit

#AUDIO 
$il pulsemixer wireplumber pipewire rtkit

#PYHTON TOOLS
$il python3-pip python3-virtualenv

#USER PACKAGES
$il lxappearance neovim dunst libnotify ripgrep flameshot timeshift Thunar htop xfce-polkit keepassxc gpicview mpv vlc nvtop

#ytfzf
#$il ueberzug jq fzf yt-dlp

#FONTS, BROWSER AND OTHERS
$il noto-fonts-cjk noto-fonts-emoji noto-fonts-ttf noto-fonts-ttf-extra

#WORKSPACE
#i3
#$il i3-gaps i3status 
#dwm
#$il libX11-devel libXft-devel libXinerama-devel
#Openbox
#$il openbox obconf

#LIBS PARA JUEGOS(OPCIONAL)
$il libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit freetype-32bit vulkan-loader-32bit

#FONT FIX
$s ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
$s xbps-reconfigure -f fontconfig

clear
echo "Aplicando configuraciones..."
sleep 2s

#INICIAR SERVICIOS
$s ln -s /etc/sv/dbus /var/service/
$s rm -r /var/service/polkitd

#CONFIG
#xdg-user-dirs-update

echo -e '#autostart
\nexport XDG_SESSION_TYPE=x11
\nexport GDK_BACKEND=x11
\nsetxkbmap latam &
\npipewire &
\nexec dbus-run-session i3'> $HOME/.xinitrc

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
