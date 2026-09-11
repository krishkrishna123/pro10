#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name:KRISHNAKUMAR.R
# Roll Number:1U24IT058
# =====================================

# Create a 1 GB swap file
sudo fallocate -l 1G /swapfile

# Set correct permissions
sudo chmod 600 /swapfile

# Format the file as swap space
sudo mkswap /swapfile

# Enable the swap space
sudo swapon /swapfile

# Make swap permanent after reboot
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Display swap status
sudo swapon --show

# Display memory and swap usage
free -h


