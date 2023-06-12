#!/bin/bash



#Ce script permet de restaurer les VMs Forti de l etudiant 1

#01-SI-FW-FortiGate
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-102-2023_06_06-15_37_17.vma.zst 102 --storage local
#01-SI-ADM-PC-Poste1
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-104-2023_06_07-03_46_01.vma.zst 104 --storage local

#01-SI-INT-PC-Poste2
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-106-2023_06_02-03_04_40.vma.zst 106 --storage local
#01-SI-SVR-AD
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-107-2023_05_26-06_31_07.vma.zst 107 --storage local
#01-SI-DMZ-SRV-Web
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-108-2023_05_26-06_33_39.vma.zst 108 --storage local
#01-RTR-Alpine
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-109-2023_05_26-06_33_55.vma.zst 109 --storage local
#01-AG-INT-FW-FortiGate
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-110-2023_06_06-15_24_17.vma.zst 110 --storage local
#01-AG-INT-PC-Poste3
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-111-2023_06_07-03_50_25.vma.zst 111 --storage local


