#!/bin/bash

#Ce script permet de telecharger et installer les paquets de Proxmox VE 

sudo apt update -y && apt upgrade -y

sudo apt dist-upgrade -y && apt full-upgrade -y

sudo sh -c 'echo "deb [arch=amd64] http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list'

sudo sh -c 'wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg'

sudo apt update -y && apt full-upgrade -y

echo " Mise a jour OK, procedons a l installation de proxmox"

sudo apt install proxmox-ve postfix open-iscsi -y

echo "Installation OK"


sudo apt remove os-prober -y

echo "L'installation de PROXMOX est terminé, vous pouvez maintenant redemarrer votre server"
#sudo reboot now

#cd /etc/apt/sources.list.d/
#echo " #deb https://enterprise.proxmox.com/debian/pve bullseye pve-enterprise "

# sh -c " #deb http://download.proxmox.com/debian bullseye pve-no-subscription "