#!/bin/bash

set -e

echo "Update ditribution ...."
apt-get update
# apt-get -y upgrade #upgrade is done by the box

echo "Installing Ansible..."
apt-get install -y software-properties-common
# apt-add-repository -y ppa:ansible/ansible # Not working
# apt-get update
apt-get install -y ansible
cp /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg