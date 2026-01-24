# Phase 3: Networking & DNS / External Access

## Objective
Make the EC2 server externally accessible securely using an Elastic IP, while controlling network access.

## Step 1: Review Security Groups
- Checked inbound rules to allow only essential ports:
  - SSH (22) → admin access
  - HTTP (80) → web access
  - HTTPS (443) → optional for SSL later
- Ensured no unnecessary ports were open.

## Step 2: Allocate Elastic IP
- Allocated an Elastic IP via AWS console:
  - Example: 34.226.79.215
- **Purpose:** Prevent IP changes after EC2 restart and simplify external access.

## Step 3: Associate Elastic IP to EC2
- Associated Elastic IP to the EC2 instance to make it reachable.
- Verified Elastic IP attachment via EC2 console.
- Note: DNS mapping using temporary services (nip.io) was considered but skipped due to network limitations.

## Step 4: Verify External Access
- Tested Nginx locally on EC2:
  ```bash
  curl http://localhost

- Tested Nginx via Elastic IP
curl http://34.226.79.215

- Verified external access via browser
http://34.226.79.215

- Verify Security Group / Firewall Rules

Ensured only necessary ports are open:

Type	Port	Source
SSH	22	Admin public IP (/32)
HTTP	80	0.0.0.0/0
HTTPS	443	Optional

Purpose: Restrict access for security while allowing web access.

Outcome

EC2 instance is externally reachable via Elastic IP.

Nginx confirmed running locally and externally.

Security group rules verified and restricted appropriately.

Server is ready for Phase 4 (Automation & Monitoring).
