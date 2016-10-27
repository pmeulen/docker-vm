# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "puppetlabs/debian-8.2-64-nocm"

  config.vm.define "docker-vm" do |docker|
    docker.vm.network "private_network", ip: "192.168.66.200", :netmask => "255.255.255.0"
    docker.vm.provider "vmware_fusion" do |v|
      v.vmx["memsize"] = "2048"
      v.vmx["numvcpus"] = "2"
      # puppetlabs centos box uses ens33 nic
      #v.vmx["ethernet0.pciSlotNumber"] = "33"
      # Add second nic for vmnet2 (configure this manually in vmware as host based, 192.168.66.0/24)
      #v.vmx["ethernet1.present"] = "TRUE"
      #v.vmx["ethernet1.connectionType"] = "custom"
      #v.vmx["ethernet1.virtualDev"] = "e1000"
      #v.vmx["ethernet1.wakeOnPcktRcv"] = "FALSE"
      #v.vmx["ethernet1.addressType"] = "generated"
      #v.vmx["ethernet1.vnet"] = "vmnet2"
      #v.vmx["ethernet1.pciSlotNumber"] = "32"
    end
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provision.yml"
  end

end
