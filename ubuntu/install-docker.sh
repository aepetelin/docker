#!/bin/bash

apt-get update

apt-get install apt-transport-https ca-certificates 

apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 \
            --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
# Precise 12.04 (LTS)
# VERSION="deb https://apt.dockerproject.org/repo ubuntu-precise main"
#
# Trusty 14.04 (LTS)
 VERSION="deb https://apt.dockerproject.org/repo ubuntu-trusty main"
#
# Wily 15.10
# VERSION="deb https://apt.dockerproject.org/repo ubuntu-wily main"
#
# Xenial 16.04 (LTS)
# VERSION="deb https://apt.dockerproject.org/repo ubuntu-xenial main"

echo $VERSION | sudo tee /etc/apt/sources.list.d/docker.list
#echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list

apt-get update

apt-cache policy docker-engine

read -n1 -r -p "Press any key to continue..." key

apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual

apt-get install docker-engine

service docker start

groupadd docker

usermod -aG docker $USER

#echo "export DOCKER_HOST=127.0.0.1" >> ~/.bashrc

docker run hello-world

