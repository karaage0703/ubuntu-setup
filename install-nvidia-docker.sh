#!/bin/bash
# Reference sites
# https://qiita.com/gen10nal/items/1e7fe8a1b2e9ad1e7919

curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get -y install nvidia-docker2
sudo pkill -SIGHUP dockerd
