#!/bin/bash

echo "Ce script permet de créer automatiquement les VMNets sur proxmox"

# Cette Commande permet de creer des VMNets dans proxmox

#VMNet Frontal
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr0 -type bridge -autostart 1  -cidr 192.168.0.1/24 -comments "Réseau Frontal"
#VMNet DMZ Publique
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr1 -type bridge -autostart 1  -cidr 192.168.5.250/24 -comments "DMZ Publique"
#VMNet External
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr2 -type bridge -autostart 1  -cidr 192.168.1.250/24 -comments "Réseau External"
#VMNet Zone 1-Siège Management
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr3 -type bridge -autostart 1  -cidr 10.1.1.250/24 -comments "Zone 1-Siège Management"
#VMNet Zone 1-Siège Internal
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr4 -type bridge -autostart 1  -cidr 192.168.10.250/24 -comments "Zone 1-Siège Internal"
#VMNet Zone 1-Siège Serveurs
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr5 -type bridge -autostart 1  -cidr 192.168.20.250/24 -comments "Zone 1-Siège Serveurs"
#VMNet Zone 1-Siège DMZ
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr6 -type bridge -autostart 1  -cidr 192.168.30.250/24 -comments "Zone 1-Siège DMZ"
#VMNet Zone 1-Siège Opérateur 1
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr7 -type bridge -autostart 1  -cidr 172.20.20.250/24 -comments "Zone 1-Siège Opérateur 1"
#VMNet Zone 1-Agence Opérateur 2
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr8 -type bridge -autostart 1  -cidr 172.30.30.250/24 -comments "Zone 1-Agence Opérateur 2"
#VMNet Zone 1-Agence Internal 
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr9 -type bridge -autostart 1  -cidr 192.168.100.250/24 -comments "Zone 1-Agence Internal "
#VMNet Zone 2-Siège Management
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr10 -type bridge -autostart 1  -cidr 10.2.1.250/24 -comments "Zone 2-Siège Management"
#VMNet Zone 2-Siège Internal
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr11 -type bridge -autostart 1  -cidr 192.168.12.250/24 -comments "Zone 2-Siège Internal"
#VMNet Zone 2-Siège Serveurs
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr12 -type bridge -autostart 1  -cidr 192.168.22.250/24 -comments "Zone 2-Siège Serveurs"
#VMNet Zone 2-Siège DMZ
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr13 -type bridge -autostart 1  -cidr 192.168.32.250/24 -comments "Zone 2-Siège DMZ"
#VMNet Zone 2-Siège Opérateur 1
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr14 -type bridge -autostart 1  -cidr 172.20.22.250/24 -comments "Zone 2-Siège Opérateur 1"
#VMNet Zone 2-Agence Opérateur 2
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr15 -type bridge -autostart 1  -cidr 172.30.32.250/24 -comments "Zone 2-Agence Opérateur 2"
#VMNet Zone 2-Agence Internal
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr16 -type bridge -autostart 1  -cidr 192.168.102.250/24 -comments "Zone 2-Agence Internal"
#VMNet Réseau Guacamole etudiant 1
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr17 -type bridge -autostart 1  -cidr 192.168.40.250/24 -comments "Réseau Guacamole Etudiant 1"
#VMNet Réseau Guacamole etudiant 2
pvesh create /nodes/$HOSTNAME/network/ -iface vmbr18 -type bridge -autostart 1  -cidr 192.168.50.250/24 -comments "Réseau Guacamole Etudiant 2"

# Cette commande permet de redemarrer les services automatiquement

systemctl restart pvenetcommit 

echo "La création a reussi !! "
pvesh get /nodes/$HOSTNAME/network