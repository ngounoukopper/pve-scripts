#!/bin/bash

# Ce script permet de configurer les differentes regles de NAT pour exposer 
# Proxmox, Pfsense et Guacamole sur Internet

#Installation de iptables
sudo apt-get install iptables-persistent

# redemarrage de iptables
sudo service netfilter-persistent reload

# NAT vers Proxmox
iptables -t nat -A PREROUTING -p tcp -d 192.168.100.50  --dport 8066 -i ens33 -j DNAT --to-destination 192.168.100.44:8006

# NAT vers Guacamole
iptables -t nat -A PREROUTING -p tcp -d 192.168.100.50  --dport 80 -i ens33 -j DNAT --to-destination 192.168.0.254:80

# NAT vers pfsense
iptables -t nat -A PREROUTING -p tcp -d 192.168.100.50  --dport 4443 -i ens33 -j DNAT --to-destination 192.168.0.254:4443


# enregistrement des differentes regles iptables
sudo service netfilter-persistent save
#/usr/sbin/netfilter-persistent save

# redemarrage du services netfilter
sudo service netfilter-persistent reload

#Affichage des regles crees
iptables -t nat -v -L -n --line-number


# Credit tuto : https://www.cyberciti.biz/faq/linux-iptables-delete-prerouting-rule-command/
