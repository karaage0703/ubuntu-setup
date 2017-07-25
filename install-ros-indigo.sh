#!/bin/bash
# The BSD License
# Copyright (c) 2014 OROCA and ROS Korea Users Group

# modified by karaage0703

echo "[Update the package]"
sudo apt-get update

echo "[Add the ROS repository]"
if [ ! -e /etc/apt/sources.list.d/ros-latest.list ]; then
  sudo sh -c "echo \"deb http://packages.ros.org/ros/ubuntu trusty main\" > /etc/apt/sources.list.d/ros-latest.list"
fi

echo "[Set up the ROS keys]"
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116

echo "[Update the package]"
sudo apt-get update

echo "[Installing ROS and ROS Packages]"
sudo apt-get install -y ros-indigo-desktop-full
sudo apt-get install -y ros-indigo-rqt-*
sudo apt-get install -y python-wstool python-catkin-tools

echo "[rosdep init and python-rosinstall]"
sudo sh -c "rosdep init"
rosdep update
source /opt/ros/indigo/setup.sh
sudo apt-get install -y python-rosinstall

echo "[Making the catkin workspace and testing the catkin_make]"
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
wstool init
cd ~/catkin_ws
catkin build

echo "[Setting the ROS evironment]"
sh -c "echo \"source ~/catkin_ws/devel/setup.bash\" >> ~/.bashrc"

echo "[Install ROS packages]"
# camera(ps4eye, etc...)
sudo apt-get install -y ros-indigo-camera-calibration
sudo apt-get -y install v4l-utils

# realsense
sudo apt-get install -y ros-indigo-rgbd-launch

# dynamixel motor
sudo apt-get install -y ros-indigo-dynamixel-motor

# usb camera
sudo apt-get install -y ros-indigo-usb-cam

# recognition
sudo apt-get install -y ros-indigo-jsk-recognition

# web controller
sudo apt-get -y install apache2
sudo apt-get -y install ros-indigo-web-video-server
sudo apt-get -y install ros-indigo-rosbridge-server
sudo apt-get -y install ros-indigo-rosbridge-suite

# AR marker
sudo apt-get install -y ros-indigo-ar-track-alvar

echo "[Complete!!!]"

exec bash

exit 0

