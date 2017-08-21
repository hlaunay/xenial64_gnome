Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
  config.vm.provision :shell, inline: "PYTHONUNBUFFERED=1 ansible-playbook /vagrant/ansible/base.yml -c local"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  end
end