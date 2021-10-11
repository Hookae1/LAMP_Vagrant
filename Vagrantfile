# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.33.15"
  config.vm.hostname = "web1"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.name = "LAMP"
    vb.cpus = 2
  end

  config.vm.provision "shell", path: "ap2_php.sh"
  config.vm.provision "shell", path: "mysql.sh"
  config.vm.provision "shell", path: "phpmyadmin.sh"
  config.vm.synced_folder "F:/VM/webserv1/html", "/var/www/html", type: "rsync", owner: "root", group: "root"
end
