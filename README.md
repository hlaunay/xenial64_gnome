# Xenial64 Gnome

This is the source code repository for the vagrant box [xenial64_gnome](https://app.vagrantup.com/hlaunay/boxes/xenial64_gnome/)

If you want to create a box based on it:

```bash
mkdir myvagrantbox
cd myvagrantbox/
vagrant init hlaunay/xenial64_gnome
```

Edit the Vagrantfile.

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