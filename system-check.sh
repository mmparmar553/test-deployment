#!/bin/bash

echo "=== System Check Script ==="
echo "Timestamp: $(date)"
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo ""

echo "=== Disk Usage (df -k) ==="
df -k
echo ""

echo "=== Memory Usage ==="
free -h
echo ""

echo "=== CPU Info ==="
lscpu | head -10
echo ""

echo "=== Network Interfaces ==="
ip addr show
echo ""

echo "=== Uptime ==="
uptime
echo ""

echo "=== Git Deployment Info ==="
echo "Branch: ${GITHUB_REF#refs/heads/}"
echo "Commit: ${GITHUB_SHA}"
echo "Repository: ${GITHUB_REPOSITORY}"
echo ""

echo "=== Deployment Complete ==="
echo "Deployed at: $(date)"
