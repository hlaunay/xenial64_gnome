# Xenial64 Gnome

This is the source code repository for the vagrant box [xenial64_gnome](https://app.vagrantup.com/hlaunay/boxes/xenial64_gnome/)

## First use

Password of ubuntu user must be set. So once the box is up and running:

```bash
vagrant ssh
$ sudo passwd ubuntu
$ exit
```

Then you can login the desktop

## How to build?

```bash
vagrant up
```

## How to package?

```bash
vagrant package --output xenial64_gnome-$VERSION.box
```