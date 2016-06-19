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
Execute following commands.
```sh
$ cd
$ git clone https://github.com/karaage0703/ros-ubuntu-setup
```
## Copy .bashrc
Execute following command:
```sh
$ cp ~/ros-ubuntu-setup/.bashrc ~/.bashrc
```

If you don't want to custom .bashrc. You can skip this step.


## Setup ROS
Execute following command(This step takes 10-20minutes).
```sh
$ ./install-indigo-ros.sh
```

## Setup development tools
Execute following command(This step takes 10-20minutes).
```sh
$ ./install-tools.sh
```

# Special Thanks
- http://wiki.ros.org/ROS/Installation/TwoLineInstall
