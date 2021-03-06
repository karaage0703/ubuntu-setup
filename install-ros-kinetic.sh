#!/bin/bash
# modified by karaage0703

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv —keyserver hkp://ha.pool.sks-keyservers.net:80 —recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install -y --allow-unauthenticated ros-kinetic-desktop-full
sudo rosdep init
rosdep update
sudo apt-get install -y --allow-unauthenticated python-wstool python-catkin-tools
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install -y --allow-unauthenticated python-rosinstall
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin init
catkin build
sh -c "echo \"source ~/catkin_ws/devel/setup.bash\" >> ~/.bashrc"
source ~/.bashrc
