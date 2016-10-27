#!/bin/bash

# Remove existing "default" machine
echo y | docker-machine rm default

# Make the "docker-vm" that was created & provisioned by ansible known to docker-machine as "default"
docker-machine create --driver generic --generic-ssh-user vagrant --generic-ssh-key .vagrant/machines/docker-vm/vmware_fusion/private_key --generic-ip-address 192.168.66.200 default
