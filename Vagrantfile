Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
  config.vm.provision :shell, inline: "PYTHONUNBUFFERED=1 ansible-playbook /vagrant/ansible/base.yml -c local"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.customize [ "modifyvm", :id, "--uart1", "0x3F8", "4" ]
    vb.customize [ "modifyvm", :id, "--uartmode1", "file", File.join(Dir.pwd, "ubuntu-xenial-16.04-cloudimg-console.log") ]
  end
end