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

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password admin'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password admin'
sudo apt-get -y install mysql-server

wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
dpkg -i erlang-solutions_1.0_all.deb

apt-get update
apt-get install -y mongooseim

cd /home/vagrant/
git clone https://github.com/jacobben85/code-everything.git

echo "Testing MongooseIm running '/usr/lib/mongooseim/bin/mongooseim ping'"

/usr/lib/mongooseim/bin/mongooseim ping

echo "If you see a response 'pong', it was a success!!! Hurray!!"

echo "Installation complete"
echo "use 'vagrant ssh' to login"
echo "user/pass : vagrant/vagrant"