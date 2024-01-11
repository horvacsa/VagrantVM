# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

VAGRANT_BOX         = "generic/ubuntu2204"
VAGRANT_BOX_VERSION = "4.0.2"
CPUS_IDP_UBUNTU    = 4
MEMORY_IDP_UBUNTU  = 4096

Vagrant.configure(2) do |config|

  config.vm.provision "shell", path: "bootstrap.sh"

  # Load Balancer Node
  config.vm.define "ubuntu" do |lb|
    lb.vm.box = VAGRANT_BOX
    lb.vm.box_version = VAGRANT_BOX_VERSION
    lb.vm.hostname = "ubuntu"
    lb.vm.network "public_network", bridge: "Intel(R) Dual Band Wireless-AC 3165", ip: "192.168.1.92"
    lb.vm.provider "virtualbox" do |v|
      v.name = "caas_ubuntu"
      v.memory = MEMORY_IDP_UBUNTU
      v.cpus = CPUS_IDP_UBUNTU
    end
    lb.vm.provision "file", source: "lz_cli_unix_2.0.2.zip", destination: "lz_cli_unix_2.0.2.zip"
    lb.vm.provision "file", source: "set_proxy.sh", destination: "set_proxy.sh"
    lb.vm.provision "file", source: "vpn_on.sh", destination: "vpn_on.sh"
    lb.vm.provision "file", source: "vpn_off.sh", destination: "vpn_off.sh"
    lb.vm.provision "shell", path: "setup.sh"
  end
end   