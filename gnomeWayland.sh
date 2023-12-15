#!/bin/bash

clear

echo "Este Script instalará Gnome en su versión Wayland:

Se recomienda una instalación mímima de Arch.

Se instalan los paquetes básicos de Gnome y Firefox.

Para cancelar presione ctrl+C 
Para continuar presione ENTER

Es necesario subir a root para este proceso.

@andriuzha"

read OK


clear
echo "Instalando paquetes de Wayland"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
pacman -S --needed xorg-xwayland xorg-xlsclients glfw-wayland

clear
echo "Paquetes de Wayland instalados con exito"
echo "Instalando GDM"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
pacman -S --needed gdm

clear
echo "Paquetes de Wayland instalados con exito"
echo "GDM Instalado con exito"
echo "Instalando paquetes de Gnome"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
pacman -S --needed gnome gnome-tweaks gnome-nettool adwaita-icon-theme fwupd arc-gtk-theme

clear
echo "Paquetes de Wayland instalados con exito"
echo "GDM Instalado con exito"
echo "Paquetes de Gnome instalados con exito"
echo "Instalando Firefox"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
pacman -S --needed firefox

clear
echo "Paquetes de Wayland instalados con exito"
echo "GDM Instalado con exito"
echo "Paquetes de Gnomeinstalados con exito"
echo "Firefox instalado con exito"
echo "Habilitando los servicios de red e DM"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
systemctl enable gdm
systemctl enable NetworkManager

clear
echo "Paquetes de Wayland instalados con exito"
echo "GDM Instalado con exito"
echo "Paquetes de Gnomeinstalados con exito"
echo "Firefox instalado con exito"
echo "Servicios de red e DM habilitados con exito"
echo "Para seiniciar presione ENTER"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

read OK

reboot
