#!/bin/bash

### Install Docker on Ubuntu 16.04
### curl -s https://raw.githubusercontent.com/vanan15/docker/master/install_docker.sh |bash

apt-get update -y
apt-get install -y apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' >/etc/apt/sources.list.d/docker.list
apt-get update -y
apt-get purge lxc-docker
apt-get install -y linux-image-extra-$(uname -r)
apt-get install -y docker-engine
usermod -aG docker ubuntu
service docker restart
