# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box_check_update = false
  config.ssh.forward_x11 = true
  config.vm.synced_folder ".", "/vagrant"
  config.vm.box = "bento/ubuntu-16.04" # Recommended by https://www.vagrantup.com/docs/boxes.html
  config.vm.box_version = "2.3.4"
  config.vm.provision "shell", privileged: false, inline: "rm -f /vagrant/setup/*-current-step.txt /vagrant/setup/*-log.txt"
  config.vm.provision "shell", privileged: false, inline: "/vagrant/setup/main"
end
