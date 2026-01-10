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
