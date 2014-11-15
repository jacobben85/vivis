#!/usr/bin/env bash

apt-get update
apt-get install -y vim
apt-get install -y htop
apt-get install -y git
apt-get install -y erlang
apt-get install -y yaws
apt-get install -y node
apt-get install -y npm
apt-get install -y phantomjs

cd /home/vagrant/
git clone https://github.com/jacobben85/code-everything.git

echo "Installation complete"
echo "use 'vagrant ssh' to login"
echo "user/pass : vagrant/vagrant"