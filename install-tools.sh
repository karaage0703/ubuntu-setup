#!/bin/bash
sudo apt-get update

# video setting tools
sudo apt-get -y install v4l-utils

# ssh
sudo apt-get -y install ssh

# synchronized clock
sudo apt-get -y install chrony
sudo ntpdate ntp.ubuntu.com

# virtual terminal
sudo apt-get -y install byobu

# Editor
sudo apt-get -y install vim
sudo apt-get -y install vim-gtk

# video capture
sudo apt-get -y install kazam

# readline
sudo apt-get -y install rlwrap

# ctags
sudo apt-get -y install exuberant-ctags
