# Xenial64 Gnome

This is the source code repository for the vagrant box [xenial64_gnome](https://app.vagrantup.com/hlaunay/boxes/xenial64_gnome/)

If you want to create a box based on it:

```bash
mkdir myvagrantbox
cd myvagrantbox/
vagrant init hlaunay/xenial64_gnome
```

Edit the Vagrantfile.

```bash
Vagrant.configure("2") do |config|
  config.vm.box = "hlaunay/xenial64_gnome"
  config.vm.provider "virtualbox" do |vb|
    vb.customize [ "modifyvm", :id, "--uart1", "0x3F8", "4" ]
    vb.customize [ "modifyvm", :id, "--uartmode1", "file", File.join(Dir.pwd, "ubuntu-xenial-16.04-cloudimg-console.log") ]
  end
end
```

Run your personal box:

```bash
vagrant up
```

## How to build?

```bash
vagrant up
```

## How to package?

```bash
vagrant package --output xenial64_gnome-$VERSION.box
```