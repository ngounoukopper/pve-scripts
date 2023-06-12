#!/bin/bash

# Ce script permet de creer des utilisateurs Etudiants pour proxmox
# et de leur assigner uniquement les dont ils besoins

# Creation des diffeents pools 
pvesh create /pools/ -poolid Etudiant1VM_Access
pvesh create /pools/ -poolid Etudiant2VM_Access

# Ajout des vms dans les pools 
pvesh set /pools/Etudiant1VM_Access -vms 102
pvesh set /pools/Etudiant1VM_Access -vms 110

pvesh set /pools/Etudiant2VM_Access -vms 112
pvesh set /pools/Etudiant2VM_Access -vms 120

#Creation du role etudiant
pveum role add EtudiantRole --privs "VM.Audit, VM.PowerMgmt, VM.Console"


#Creation du compte etudiant 1
##############################
pveum user add etudiant1@$HOSTNAME -comment "Etudiant 1"
# Assignation du mot de passe
pveum passwd etudiant1@$HOSTNAME 
# Activation du compte
pveum user modify etudiant1@$HOSTNAME -enable 1


#Creation du compte etudiant 2
##############################
pveum user add etudiant2@$HOSTNAME -comment "Etudiant 2"
# Assignation du mot de passe
pveum passwd etudiant2@$HOSTNAME 
# Activation du compte
pveum user modify etudiant2@$HOSTNAME -enable 1


# Assignation du role EtudiantAdmin au pool Etudiant1VM_Access
pveum acl modify /pool/Etudiant1VM_Access/ -user etudiant1@$HOSTNAME -role EtudiantRole
# Assignation du role EtudiantAdmin au pool Etudiant2VM_Access
pveum acl modify /pool/Etudiant2VM_Access/ -user etudiant2@$HOSTNAME -role EtudiantRole











