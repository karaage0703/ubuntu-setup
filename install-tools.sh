#!/bin/bash
sudo apt-get update

# software development tool
sudo apt-get -y install ssh
sudo apt-get -y install chrony						# synchronized clock
sudo ntpdate ntp.ubuntu.com
sudo apt-get -y install byobu							# virtual terminal
sudo apt-get -y install vim
sudo apt-get -y install vim-gtk
sudo apt-get -y install kazam							# video capture
sudo apt-get -y install rlwrap						# completion
sudo apt-get -y install exuberant-ctags		# ctag
sudo apt-get -y install chromium-browser

# for ps4eye
sudo apt-get install -y ros-indigo-camera-calibration
sudo apt-get -y install v4l-utils

# for realsense
sudo apt-get install -y ros-indigo-rgbd-launch

# dynamixel motor
sudo apt-get install -y ros-indigo-dynamixel-motor

# for usb camera
sudo apt-get install -y ros-indigo-usb-cam

# for recognition
sudo apt-get install -y ros-indigo-jsk-recognition

# for web controller
sudo apt-get -y install apache2
sudo apt-get -y install ros-indigo-web-video-server
sudo apt-get -y install ros-indigo-rosbridge-server
sudo apt-get -y install ros-indigo-rosbridge-suite

# for AR marker
sudo apt-get install -y ros-indigo-ar-track-alvar
