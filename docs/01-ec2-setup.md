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

## Step 4b: Service Management & Logs

- Listed active services using systemctl
- Verified SSH and UFW services are running
- Learned service lifecycle commands
- Explored system logs in /var/log
- Reviewed authentication logs for SSH and sudo activity
- Used journalctl for service-level logs

## Note
Reviewed /var/log/auth.log to verify successful SSH key authentication and sudo command auditing. Confirmed that the ubuntu user authenticated via public key and executed administrative commands using sudo, ensuring traceability and secure access control.

Perfect question.
Below is **exactly what to paste** into **`docs/01-ec2-setup.md`** for **Step 5**.
You can copy it **as-is** (adjust nothing).

---

## **Step 5: SSH Hardening and Secure Access**

### **Objective**

Strengthen server security by restricting SSH access to key-based authentication only and preventing direct root login. This reduces the risk of brute-force attacks and unauthorized access.

---

### **Actions Taken**

#### **1. Disabled Password-Based Authentication**

Password login was disabled to ensure that only users with valid SSH key pairs can access the server.

**Configuration updated in:**

```bash
/etc/ssh/sshd_config
```

**Relevant settings:**

```text
PasswordAuthentication no
PubkeyAuthentication yes
```

---

#### **2. Disabled Root Login over SSH**

Direct root login via SSH was disabled to enforce the principle of least privilege. Administrative tasks are performed using `sudo` instead.

**Relevant setting:**

```text
PermitRootLogin no
```

---

#### **3. Restarted SSH Service**

To apply the changes, the SSH service was restarted.

```bash
sudo systemctl restart ssh
```

---

### **Verification**

The SSH configuration was verified to confirm that password authentication and root login are disabled.

```bash
sudo sshd -T | grep -E 'passwordauthentication|permitrootlogin'
```

**Expected Output:**

```text
passwordauthentication no
permitrootlogin no
```

---

### **Security Impact**

* Prevents brute-force password attacks
* Ensures only authorized users with SSH keys can access the server
* Reduces the attack surface by eliminating direct root access
* Aligns with industry best practices for Linux and cloud server security

---

### **Status**

✅ SSH access successfully hardened and secured
