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
