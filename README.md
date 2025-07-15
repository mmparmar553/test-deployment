# Test Deployment Repository

This repository demonstrates automated deployment from GitHub to Google Cloud VM using GitHub Actions.

## Branches
- `main` - Production deployment
- `stage` - Staging deployment  
- `test` - Local testing

## Files
- `system-check.sh` - System monitoring script that runs on deployment
- `.github/workflows/deploy-to-gcp.yml` - GitHub Actions workflow

## System Check Script
The deployment runs a system check that displays:
- Disk usage (df -k)
- Memory usage
- CPU information
- Network interfaces
- System uptime
- Git deployment information

## Setup Required
1. Add GitHub Secrets:
   - `GCP_SSH_PRIVATE_KEY` - SSH private key for VM access
   - `GCP_VM_IP` - VM IP address (146.148.102.11)

2. Ensure VM has SSH access enabled
3. Push to main or stage branch to trigger deployment
