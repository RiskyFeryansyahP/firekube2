#!/bin/bash

# Install docker
installDockerCentos() {
    echo "Installing docker in centos ...."

    if [[ $(which docker) && $(docker --version) ]]; then
        echo "docker has been installed!"
    else
        echo "docker not installed!"
    fi

    # Uninstall old versions
#    sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

#     # SET UP THE REPOSITORY
#     sudo yum install -y yum-utils
#     sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

#     # INSTALL DOCKER ENGINE
#     sudo yum -y install docker-ce docker-ce-cli containerd.io
    
#     # Check Docker Version
#     docker version
# }

# Install kubectl
installKubectl() {
    if [ $(kubectl version --client) ]; then
        echo "kubectl installed!"
    else
        echo "kubectl not installed!"
    fi

    # curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
    # chmod +x ./kubectl
    # sudo mv ./kubectl /usr/local/bin/kubectl
    # kubectl version --client
}

# Install wksctl
installWksctl() {
    if [ $(wksctl version) ]; then
        echo "wksctl installed"
    else
        echo "wksctl not installed"
    fi

#     curl -LO https://github.com/weaveworks/wksctl/releases/download/0.8.1/wksctl-0.8.1-linux-x86_64.tar.gz
#     tar xfz wksctl-0.8.1-linux-x86_64.tar.gz
#     chmod +x wksctl
#     sudo mv wksctl /usr/local/bin
# }

# Check update centos
sudo yum check-update

# Install Git
sudo yum -y install git

installDockerCentos
installKubectl
installWksctl