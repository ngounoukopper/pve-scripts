#!/bin/bash

# Ce script contient les regles de NAT a configurer sur l'interface 
# vmbr0 de Proxmox

auto ens33
iface ens33 inet static
        address 192.168.100.100/24
        gateway 192.168.100.1


auto ens37
iface ens37 inet manual

auto vmbr0
iface vmbr0 inet static
        address 192.168.0.1/24
        bridge-ports none
        bridge-stp off
        bridge-fd 0

        post-up echo 1 > /proc/sys/net/ipv4/ip_forward
        post-up iptables -t nat -A POSTROUTING -s '192.168.0.0/24' -o ens33 -j MASQUERADE
        post-down iptables -t nat -A POSTROUTING -s '192.168.0.0/24' -o ens33 -j MASQUERADE


systemctl restart pvenetcommit 