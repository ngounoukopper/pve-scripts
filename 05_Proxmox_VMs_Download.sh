#!/bin/bash

# Ce script permet telecharger les VMs de l'infrastructure depuis un via SCP depuis un serveur 
# ou seront stocker depuis VMs 

scp -r root@192.168.100.131:/root/vmbackup/ /var/lib/vz/dump/