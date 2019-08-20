#!/bin/bash
yum makecache fast
yum update -y
yum install -y vim wget

# Install Docker
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum install -y docker-ce docker-ce-cli containerd.io
mkdir -p /etc/docker
cp /vagrant/daemon.json /etc/docker/
systemctl start docker
systemctl enable docker

# Set environment
cp /vagrant/vimrc /root/.vimrc
cp /vagrant/vimrc /home/vagrant/.vimrc
