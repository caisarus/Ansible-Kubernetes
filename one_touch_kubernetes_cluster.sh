#!/bin/bash

#Prepare hosts for ansible
#Ensure hosts match to inventory file
#Ensure hosts file is updated on control machine
#You will be asked first time for the password for the SSH connection. We recomend to use same password for all hosts
echo "Preparing ansible master"
ansible-playbook playbooks/prepare-ansible-master.yml

echo "Please enter SSH password for the servers"
ansible-playbook playbooks/prepare-ansible-target.yml -k

echo "Starting kubernetes deployment"
ansible-playbook kubernetes.yml

echo "After running this script you will need to run only "ansible-playbook kubernetes.yml" as the cluster is already set up"
echo "Run ansible -a \"kubectl get nodes\" kubernetes-master to check if cluster is up"
