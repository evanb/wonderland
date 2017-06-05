#!/usr/bin/env bash
set -e

# install docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker $USER

# install node
curl -sL https://deb.nodesource.com/setup_6.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt-get install nodejs

# install general dev dependencies
sudo apt-get install -y make
