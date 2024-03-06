#!/bin/bash
# Reference sites
# https://qiita.com/gen10nal/items/1e7fe8a1b2e9ad1e7919
# https://docs.docker.com/engine/install/ubuntu/

sudo apt-get update
sudo apt-get -y install ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo apt-get -y install docker-compose-plugin
sudo gpasswd -a $USER docker
newgrp docker
# Log off and Log in
