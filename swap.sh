#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name:
# Roll Number:
# =====================================

# Write your commands below

# 1. Allocate a 1 GB file for swap space
sudo fallocate -l 1G /swapfile
# Note: If fallocate is not supported on your filesystem, use dd instead:
# sudo dd if=/dev/zero of=/swapfile bs=1M count=1024 status=progress

# 2. Set strict permissions (only root should read/write)
sudo chmod 600 /swapfile

# 3. Format the file as a Linux swap area
sudo mkswap /swapfile

# 4. Enable the swap file
sudo swapon /swapfile

# 5. Make the swap file persistent across system reboots
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# 6. Verify that the swap space is active
sudo swapon --show
free -h
