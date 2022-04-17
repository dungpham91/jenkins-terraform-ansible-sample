#!/bin/bash
#
# Author: Dung Pham
# Date: 17/04/2022
# Purpose: This script use to install Terraform, AWS CLI, Ansible inside Jenkins container
#      Please note that may you have to run this script again if you re-create Jenkins container
# Use:
#   - Login to Jenkins container with command: docker exec -it jenkins bash
#   - With root user, copy this script into container and run: bash install.sh


### Install Terrafom
apt-get update
apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
apt-get update
apt-get install -y terraform


### Install AWS CLI
apt-get install -y awscli
# After install finished, configure AWS IAM with command: aws configure


### Install Ansible
apt-get install -y ansible

# Disable host checking in Ansible
ansible --version
echo "host_key_checking = False" > ~/.ansible/ansible.cfg
cat > ~/.ssh/config <<"EOF"
Host *
    StrictHostKeyChecking no
EOF