#!/bin/bash
# Update system packages
sudo yum update -y

# Install Ansible (includes python3 and basic collections)
sudo yum install ansible -y

# Verify installation
ansible --version