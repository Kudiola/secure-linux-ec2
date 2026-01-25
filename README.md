# Secure Linux Server on AWS EC2

## Overview
This project documents the deployment and hardening of an Ubuntu Linux server on AWS EC2.
The goal is to apply Linux administration, networking fundamentals, and basic cloud security
best practices in a real-world environment.

## Technologies Used
- AWS EC2 (Ubuntu 22.04 LTS)
- Linux (users, permissions, services)
- SSH
- UFW Firewall
- systemd
- Networking fundamentals
- Git & GitHub

## Project Objectives
- Deploy a Linux server in AWS
- Implement secure user and access management
- Harden SSH access
- Configure firewall and networking rules
- Monitor logs and system activity
- Document everything clearly

## Project Structure
See the `docs/` directory for step-by-step documentation.

## Status
🚧 In progress

## Project Phases

# Secure Linux EC2 Infrastructure Project

This project documents the deployment, security, automation, and monitoring of a Linux-based EC2 server. It was completed in four phases:

**Phase 1: EC2 Setup**
- Launch EC2 instance
- Configure user access and basic security

**Phase 2: User Permissions & Security Hardening**
- Set up users, groups, and sudo privileges
- Implement basic firewall rules and SSH security

**Phase 3: Networking & External Access**
- Allocate Elastic IP
- Configure Nginx and verify external access
- Set basic firewall rules for safe external access

**Phase 4: Automation & Monitoring**
- Enable Nginx auto-start
- Monitor CPU, memory, disk usage, and services
- Set up a Bash script for proactive alerts
- Document commands and steps for reproducibility

**Outcome:**  
The server is now automated, monitored, and secure, ready for production-like testing. All commands and documentation are stored in the repository for reference and reproducibility.


