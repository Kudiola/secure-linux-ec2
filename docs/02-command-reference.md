## User Management
```bash
adduser adminuser          # Create new user
usermod -aG sudo adminuser # Grant sudo access
su - adminuser             # Switch user

## Permissions
mkdir ~/perm-test          # Create test folder
touch ~/perm-test/file.txt # Create test file
chmod 700 ~/perm-test      # Owner full access only
ls -l ~/perm-test          # Check permissions

## SSH Hardening Commands
```bash
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup
sudo nano /etc/ssh/sshd_config
sudo systemctl restart ssh

## Firewall (UFW)
```bash
sudo ufw allow OpenSSH   # Allow SSH through firewall
sudo ufw enable          # Enable the firewall
sudo ufw status          # Check firewall status

## Linux File System Exploration
```bash
ls /
ls /home
ls /root
ls /etc
ls /var
ls /var/log
ls /usr
ls /bin
ls /sbin
ls /tmp
ls /opt
ls -ld /home /root /etc /var /usr /tmp

## Service Management
```bash
sudo systemctl list-units --type=service --state=running
sudo systemctl status ssh
sudo systemctl status ufw
sudo systemctl restart ufw
sudo systemctl start <service>
sudo systemctl stop <service>
sudo systemctl enable <service>
sudo systemctl disable <service>

## Logs
ls /var/log
sudo tail -n 20 /var/log/auth.log
sudo tail -f /var/log/auth.log
sudo journalctl -xe
sudo journalctl -u ssh
