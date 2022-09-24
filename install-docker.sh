#!/bin/bash
# Reference sites
# https://qiita.com/gen10nal/items/1e7fe8a1b2e9ad1e7919
# https://docs.docker.com/engine/install/ubuntu/

sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo apt-get -y install docker-compose-plugin
sudo gpasswd -a $USER docker
# Log off and Log in
