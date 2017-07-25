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
$ git clone https://github.com/karaage0703/ubuntu-setup
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
$ ./install-ros-indigo.sh
```

## Setup development tools
Execute following command(This step takes 10-20minutes).
```sh
$ ./install-tools.sh
```

## Change Directory name from Japanese to English(optional)
Execute following command:
```sh
$ LANG=C xdg-user-dirs-gdk-update
```

# Special Thanks
- http://wiki.ros.org/ROS/Installation/TwoLineInstall
- http://unskilled.site/linuxで日本語名ディレクトリを英語名に変換する方/

# License
This software is released under the BSD License, see LICENSE.
