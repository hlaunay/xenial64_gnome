# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
    config.vm.synced_folder ".", "/vagrant", mount_options: ["dmode=700,fmode=600"]
  else
    config.vm.synced_folder ".", "/vagrant"
  end

  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
  config.vm.provision :shell, inline: "PYTHONUNBUFFERED=1 ansible-playbook /vagrant/ansible/base.yml -c local"
  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.customize ["modifyvm", :id, "--memory", "6000"]
    v.customize ["modifyvm", :id, "--cpus", "2"]
    v.customize ["modifyvm", :id, "--vram", "128"]
    v.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    v.customize ['modifyvm', :id, '--draganddrop', 'bidirectional']
    v.customize ["modifyvm", :id, "--accelerate3d", "off"]
  end

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end
end