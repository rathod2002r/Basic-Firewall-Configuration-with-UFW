#!/bin/bash
# UFW Firewall Configuration Script
# Task 2: Basic Firewall Configuration

echo "Starting UFW Firewall Configuration..."

# Reset UFW to defaults
sudo ufw --force reset

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH (port 22) - CRITICAL: Don't lock yourself out!
sudo ufw allow ssh
sudo ufw allow 22/tcp

# Deny HTTP traffic (port 80)
sudo ufw deny 80/tcp
sudo ufw deny http

# Allow HTTPS (port 443) - for secure web browsing
sudo ufw allow 443/tcp
sudo ufw allow https

# Allow DNS (port 53) - for name resolution
sudo ufw allow 53

# Enable UFW
sudo ufw --force enable

# Display status
echo "Firewall configuration complete!"
echo "Current UFW status:"
sudo ufw status verbose

echo "Numbered rules:"
sudo ufw status numbered
