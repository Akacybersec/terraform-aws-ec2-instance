#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status.

# Update system packages
sudo apt-get update -y
sudo apt-get upgrade -y

# Install essential tools
sudo apt-get install -y docker.io git curl python3-pip openjdk-8-jre

# Add the 'ubuntu' user to the Docker group
sudo usermod -aG docker ubuntu

# Install Trivy
wget https://github.com/aquasecurity/trivy/releases/latest/download/trivy_0.45.0_Linux-64bit.deb
sudo dpkg -i trivy_0.45.0_Linux-64bit.deb

# Install Checkov (IaC Security Scanning)
pip3 install checkov

# Install Semgrep (SAST Tool)
pip3 install semgrep

# Indicate completion
echo "DevSecOps lab is ready!" > /home/ubuntu/lab-status.txt
