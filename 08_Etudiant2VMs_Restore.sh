#!/bin/bash


#Ce script permet de restaurer les VMs de l etudiant 2

#02-SI-FW-FortiGate
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-112-2023_06_06-15_46_55.vma.zst 112 --storage local
#02-SI-ADM-Poste1
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-114-2023_06_07-04_18_38.vma.zst 114 --storage local

#02-SI-INT-PC-Poste2
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-116-2023_06_02-03_08_56.vma.zst 116 --storage local
#02-SI-SVR-AD
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-117-2023_05_26-06_44_08.vma.zst 117 --storage local
#02-SI-DMZ-SRV-Web
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-118-2023_05_26-06_47_11.vma.zst 118 --storage local
#02-RTR-Alpine
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-119-2023_05_26-06_47_27.vma.zst 119 --storage local
#02-AG-INT-FW-FortiGate
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-120-2023_06_07-04_22_55.vma.zst 120 --storage local
#02-AG-INT-PC-Poste3
qmrestore /var/lib/vz/dump/vmbackup/vzdump-qemu-121-2023_06_07-04_23_28.vma.zst 121 --storage local

