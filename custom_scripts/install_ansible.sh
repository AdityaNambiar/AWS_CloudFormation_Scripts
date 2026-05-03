#!/bin/bash
# Update system packages
sudo dnf update -y

# Install Ansible (includes python3 and basic collections)
sudo dnf install ansible -y

# Verify installation
ansible --version