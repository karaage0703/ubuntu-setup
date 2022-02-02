#!/bin/bash
# Reference sites
# https://github.com/IntelRealSense/librealsense/blob/master/doc/distribution_linux.md

sudo apt update
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u

sudo apt install -y librealsense2-dkms
sudo apt install -y librealsense2-utils
sudo apt install -y librealsense2-dev
sudo apt install -y librealsense2-dbg
