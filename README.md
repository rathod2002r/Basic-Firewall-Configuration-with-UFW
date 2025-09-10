# Task 2: Basic Firewall Configuration with UFW

## Objective
Configure a basic firewall using **UFW (Uncomplicated Firewall)** on Ubuntu to control inbound/outbound network traffic and improve system security.

---

## Steps Performed

### 1. Install and Verify UFW

sudo apt update
sudo apt install ufw
sudo ufw status

### 2. Set Default Policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

### 3. Configure Rules

Allow SSH (port 22): Prevents accidental lockout.
Deny HTTP (port 80): Blocks insecure web traffic.
Allow HTTPS (port 443): Allows secure web browsing.
Allow DNS (port 53): Enables domain name resolution.

### 4. Enable UFW and Check Status
sudo ufw --force enable
sudo ufw status verbose
sudo ufw status numbered
