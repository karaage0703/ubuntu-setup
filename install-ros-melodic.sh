#!/bin/bash

echo "[Add the ROS repository]"
if [ ! -e /etc/apt/sources.list.d/ros-latest.list ]; then
  sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
fi

echo "[Set up the ROS keys]"
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

echo "[Update the package]"
sudo apt update

echo "[Installing ROS and ROS Packages]"
sudo apt install -y ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install -y python-catkin-tools

echo "[rosdep init and python-rosinstall]"
sudo apt install -y python-rosdep
sudo rosdep init
rosdep update

echo "[Making the catkin workspace and testing the catkin_make]"
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin init
catkin build

echo "[Setting the ROS evironment]"
sh -c "echo \"source ~/catkin_ws/devel/setup.bash\" >> ~/.bashrc"
source ~/.bashrc


echo "[Install ROS packages]"

echo "[Complete!!!]"

exec bash

exit 0

