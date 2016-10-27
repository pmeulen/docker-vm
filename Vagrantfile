# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "puppetlabs/debian-8.2-64-nocm"

  config.vm.define "docker-vm" do |docker|
    docker.vm.network "private_network", ip: "192.168.66.200", :netmask => "255.255.255.0"
    docker.vm.provider "vmware_fusion" do |v|
      v.vmx["memsize"] = "2048"
      v.vmx["numvcpus"] = "2"
    end
    docker.vm.provider "" do |v|
      v.vmx["memsize"] = "2048"
      v.vmx["numvcpus"] = "2"
    end
    docker.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
    end
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provision.yml"
  end

end
