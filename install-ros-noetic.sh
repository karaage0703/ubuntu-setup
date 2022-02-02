#!/bin/bash
# references
# http://wiki.ros.org/noetic/Installation/Ubuntu
# https://qiita.com/take4eng/items/70f167320ede46e4139c
# https://qiita.com/bypenguinsan/items/6de7f21ab02956bb9448

echo "[Add the ROS repository]"
if [ ! -e /etc/apt/sources.list.d/ros-latest.list ]; then
  sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
fi

echo "[Set up the ROS keys]"
sudo apt update
sudo apt install -y curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

echo "[Update the package]"
sudo apt update

echo "[Installing ROS and ROS Packages]"
sudo apt install -y ros-noetic-desktop-full
source /opt/ros/noetic/setup.bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
sudo apt-get install -y python-catkin-tools

echo "[Dependecies]"
sudo apt install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo apt install -y python3-catkin-tools
sudo apt install -y python3-rosdep
sudo rosdep init
rosdep update

echo "[Making the catkin workspace and testing the catkin_make]"
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin init
catkin build

echo "[Setting the ROS evironment]"
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo "[Install ROS packages]"

echo "[Complete!!!]"

exec bash

exit 0

