# Creating a VM for running docker on OSX 

Uses Vagrant to create a Debian 8 VMWare Fusion VM that runs Docker engine on OSX

# Prequisites

Required software on OSX:

- vagrant
- ansible
- docker
- docker-machine
- vmware-fusion with the vagrant fusion provider

# Installation

Ensure the prerequisites are present. Then run:

$ ```vagrant up && ./docker-machine-create.sh```

Set the environment variables for running docker:

$ ```eval $(docker-machine env)```

# Test

Run the "Hello World" docker example from the [tutorial](https://docs.docker.com/engine/tutorials/dockerizing/):

$ ```docker run ubuntu /bin/echo 'Hello world'```

That should print "Hello world"

# Notes

- Should work with the virtualbox provider as well instead of vmware fusion, bus is untested
- The VM is registerd with docker-machine as "default". To get rid of a previous version run "docker-machine rm default"
- The VM uses a fixed ip 192.168.66.200/24. Vagrant should take care of creating a provate vmware network shared with the host. 
- Versions used: Vagrant 1.8.5 with vagrant-vmware-fusion provider 4.0.11, VMWare Fusion 8.5.0, ansible 2.1.1.0 (pip), docker-machine version 0.8.1 (macports), docker client version 1.12.1 (macports)
- Add the "eval $(docker-machine env)" to ~/.bash_profile to make the docker command available in any shell
