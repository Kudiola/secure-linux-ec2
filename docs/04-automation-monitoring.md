# Phase 4: Automation & Monitoring

## Objective
Phase 4 focuses on automating server tasks and monitoring system health to ensure a reliable, secure, and production-ready EC2 environment. After deploying the server (Phase 1), setting user permissions and hardening security (Phase 2), and enabling external access (Phase 3), this phase ensures the infrastructure runs smoothly with minimal manual intervention.

---

## Goals of this Phase
1. Automate essential services so they start on server reboot (e.g., Nginx)  
2. Monitor server resources such as CPU, memory, disk usage, and service status  
3. Establish proactive alerting for service failures or performance issues  
4. Document commands and processes for reproducibility and future reference  

By completing Phase 4, the server transitions from a manually maintained instance to a **robust, self-managing system**, laying the groundwork for more advanced automation and monitoring in the future.

### Step 1: Enable Nginx Auto-start

- Checked Nginx status:
```bash
sudo systemctl status nginx

- Enabled auto-start on boot:
sudo systemctl enable nginx

- Verified auto-start:
systemctl is-enabled nginx

## Step 2: Basic Server Monitoring

### 2a. Check CPU, Memory, and Disk Usage

- Real-time CPU and memory usage:
```bash
top
````

* Total, used, and available memory:

```bash
free -h
```

* Disk usage per partition:

```bash
df -h
```

---

### 2b. Check Running Services

* List all active services:

```bash
systemctl list-units --type=service --state=running
```

* Check Nginx service specifically:

```bash
sudo systemctl status nginx

### 2c. Optional – Real-time Interactive Monitoring

* Install and use `htop` for interactive monitoring:

```bash
sudo apt update
sudo apt install htop -y
htop

### 2d. Documentation Notes

* Monitor CPU, memory, and disk usage regularly to detect potential issues early.
* Ensure critical services (like Nginx) are running.
* Optional: Use `htop` for a more detailed, real-time view of server health.

## Step 3: Proactive Alerts & Logging

### Goal
- Keep track of system activity and logs  
- Detect failures in critical services like Nginx  
- Enable proactive notifications if services go down  

---

### 3a. Check Nginx Logs

- Access logs (requests made to the server):
```bash
sudo tail -f /var/log/nginx/access.log
Error logs (Nginx errors):

sudo tail -f /var/log/nginx/error.log
Press Ctrl + C to stop monitoring

3b. Check System Logs
View recent system events and errors:

sudo journalctl -xe
Real-time monitoring:

sudo journalctl -f
3c. Automated Nginx Monitoring Script
Example Bash script (check_nginx.sh) to alert if Nginx stops:

#!/bin/bash

# Check if Nginx is running
if ! systemctl is-active --quiet nginx; then
    echo "ALERT: Nginx is down!" | mail -s "Nginx Alert" kudirat******l@example.com
fi

3d. Make Script Executable
chmod +x check_nginx.sh
Run manually to test:

./check_nginx.sh

Outcome
Nginx and system logs can now be monitored actively

Alerts are triggered if Nginx stops (tested)

Lays the foundation for automated server monitoring and proactive maintenance

## Phase 4 Summary

In Phase 4, we focused on **automation and monitoring** to ensure our EC2 server runs reliably with minimal manual intervention. Key achievements include:

- **Automated Nginx startup**: Nginx now starts automatically on server reboot
- **Server monitoring**: CPU, memory, disk usage, and service status can be tracked in real-time
- **Proactive alerts**: Bash script alerts us if Nginx stops (tested)

**Outcome:**  
The EC2 instance is now a self-managing system with monitoring and alerting, laying the foundation for future automation and production-ready practices.
