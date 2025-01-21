<<-EOF
    #!/bin/bash
    sudo apt-get update -y
    sudo apt-get install -y docker.io git curl python3-pip

    # Install Docker
    sudo apt-get install -y docker.io
    sudo usermod -aG docker ubuntu

    # Install Trivy
    wget https://github.com/aquasecurity/trivy/releases/latest/download/trivy_0.45.0_Linux-64bit.deb
    sudo dpkg -i trivy_0.45.0_Linux-64bit.deb

    # Install Checkov
    pip3 install checkov
    
    # Install Semgrep (SAST Tool)
    pip3 install semgrep

    # GitHub Repository Setup (Example)
    git clone https://github.com/your-org/your-repo.git /opt/devsecops

    #install java
    apt update
    apt install openjdk-8-jre -y
    

    # Docker Permissions
    sudo usermod -aG docker ubuntu

    # Indicate completion
    echo "DevSecOps lab is ready!" > /home/ubuntu/lab-status.txt
  EOF
