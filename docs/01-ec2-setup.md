Phase 1: Initial Linux Hardening & Administration
Make the EC2 instance secure, organized, and maintainable

## Initial EC2 System Information

No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 24.04.3 LTS
Release:	24.04
Codename:	noble

## Step 2: User & Permission Setup

- Created a new admin user: `adminuser`
- Granted sudo access: `sudo usermod -aG sudo adminuser`
- Verified switching user: `su - adminuser`
- Practiced file permissions with `chmod`:
  - `chmod 700 ~/perm-test` to restrict access

## Step 3: SSH Hardening & Firewall

- Backed up SSH config: `/etc/ssh/sshd_config.backup`
- Disabled root login: `PermitRootLogin no`
- Enforced key-based login only: `PasswordAuthentication no`
- Restarted SSH: `sudo systemctl restart ssh`
- Configured firewall with UFW:
  - Allowed SSH: `sudo ufw allow OpenSSH`
  - Enabled firewall: `sudo ufw enable`
  - Verified status: `sudo ufw status`

# SSH config snippet (sshd_config)
PermitRootLogin no
PasswordAuthentication no

## Step 4a: Linux File System Overview

Explored core Linux directories to understand system structure:
- / – root filesystem
- /home – user directories
- /root – root user home
- /etc – system configuration files
- /var – logs and variable data
- /usr – installed binaries and libraries
- /bin, /sbin – essential system commands
- /tmp – temporary files
- /opt – optional software

Checked directory ownership and permissions to understand security boundaries.
