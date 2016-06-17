# ros-ubuntu-setup
Install the ROS scripts and development tools for ROS.  
This script file is tested in Ubuntu 14.04 LTS.

# Setup
## Install git
```sh
$ sudo apt-get update
$ sudo apt-get -y install git
```
## Clone repository and copy tools
```sh
$ cd
$ git clone https://github.com/karaage0703/ros-ubuntu-setup
```
## Setup .bashrc
```sh
$ cd ~/ros-ubuntu-setup
$ ./setup.sh
```

## Setup ROS
```sh
$ ./install-ros.sh
```

## Setup development tools
```sh
$ ./install-tools.sh
```

# Special Thanks
- http://wiki.ros.org/ROS/Installation/TwoLineInstall
