# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = 2
NAME = "ubuntu"

script = <<SCRIPT
sudo apt-get update
sudo apt-get upgrade -y
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  
  config.vm.provider :virtualbox do |vbox|
    vbox.name = NAME
  end
  
  config.vm.hostname = NAME

  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http = ENV['http_proxy']
    config.proxy.https = ENV['https_proxy']
    config.proxy.no_proxy = "localhost,127.0.0.1"
  end
  
  config.vm.provision "shell", inline: script, privileged: false
end
