#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name:KRISHNAKUMAR.R
# Roll Number:1U24IT058
# =====================================

# Write your commands below
#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name: DHARAN K
# Roll Number: 1U24IT029
# =====================================

# Write your commands below

# Disable existing swap
sudo swapoff /swapfile

# Remove existing swapfile if present
sudo rm -f /swapfile

# Create a 1GB swap file using dd
sudo dd if=/dev/zero of=/swapfile bs=1M count=1024

# Set proper permissions (readable/writable by root only)
sudo chmod 600 /swapfile

# Create swap signature on the file
sudo mkswap /swapfile

# Activate the swap space
sudo swapon /swapfile

# Display the activated swap space
sudo swapon --show
