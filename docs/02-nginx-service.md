## Step 1: System Package Update

**Objective:** Ensure the system is up to date before installing services.

**Actions Taken:**
- Updated package lists using `sudo apt update`
- Upgraded installed packages using `sudo apt upgrade -y`
- Verified system stability with `uptime`
- Checked for any held-back packages

**Outcome:** System packages successfully updated; server is stable and ready for service deployment

## Step 2: Install and Manage Nginx Service

**Objective:** Deploy Nginx as a managed system service.

**Actions Taken:**
- Installed Nginx using `sudo apt install nginx -y`
- Verified service status using `sudo systemctl status nginx`
- Practiced start, stop, restart commands
- Enabled Nginx to start on boot
- Tested locally using `curl http://localhost`

**Outcome:** Nginx web server successfully installed and running under systemd management

## Step 3: Nginx Logs & Troubleshooting

**Objective:** Learn to read service logs and troubleshoot issues.

**Actions Taken:**
- Explored `/var/log/nginx/access.log` and `error.log`
- Used `tail` to review the last 20 log entries
- Practiced live monitoring with `tail -f`
- Verified Nginx service with `systemctl status nginx`
- Simulated troubleshooting steps for service failure

**Outcome:** Confident in reading Nginx logs and identifying issues; ready to monitor service in production

## Step 4: Expose Nginx Service Securely

**Objective:** Allow external traffic to the web server while keeping the server secure.

**Actions Taken:**
- Checked firewall status using `sudo ufw status`
- Allowed HTTP traffic: `sudo ufw allow 'Nginx HTTP'`
- Optional: allowed HTTPS traffic for SSL
- Reloaded UFW to apply rules
- Tested web access externally via EC2 public IP

**Outcome:** Nginx service successfully exposed; firewall rules restrict access to only required ports

## Phase 2 Summary

**Objective:** Deploy and manage a web service on the secure EC2 server.

**Key Achievements:**
- Updated and upgraded system packages
- Installed Nginx and confirmed service status
- Learned to start, stop, restart, and enable services via systemd
- Monitored logs and practiced troubleshooting
- Exposed the web server securely through UFW firewall rules
- Verified external access using EC2 public IP

**Outcome:** Server is fully functional, running Nginx, and remains secure — ready for further services and automation in Phase 3
