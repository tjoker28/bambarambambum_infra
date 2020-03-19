#!/bin/bash
#Install MongoDB
echo "Start install MongoDB..."
echo "Import key and repo"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
echo "Update repo and install MongoDB"
sudo apt update
sudo apt install -y mongodb-org
echo "Start MongoDB"
sudo systemctl start mongod
echo "Enable MongoDB"
sudo systemctl enable mongod
status=$(systemctl is-active mongod)
echo "Status MongoDB is: $status"
