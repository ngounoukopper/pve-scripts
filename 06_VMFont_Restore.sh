#!/bin/bash


#Ce script permet de restaurer les VMs Front (Pfsense et Guacamole)

#00-FW-Pfsense
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-100-2023_06_02-02_38_33.vma.zst 100 --storage local
#00-WAF-Guacamole
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-101-2023_06_02-02_39_26.vma.zst 101 --storage local