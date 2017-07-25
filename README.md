# ubuntu-setup
Setup ubuntu and install development tools, ROS, etc...  
This script file is tested in Ubuntu 14.04 LTS and 16.04 LTS.

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
## Setup
Setup items.


### Copy .bashrc
Execute following command:
```sh
$ cp ~/ubuntu-setup/.bashrc ~/.bashrc
```

### Change Directory name from Japanese to English(Japanese only)
Execute following command:

```sh
$ LANG=C xdg-user-dirs-gdk-update
```

### Clock Adjust
Execute following command:

```sh
$ sudo date —set @"$(wget -q https://ntp-a1.nict.go.jp/cgi-bin/jst -O - | sed -n 4p | cut -d. -f1)"
```

You can execute above command under proxy.

### Install ROS
Execute following command(This step takes 10-20minutes).

#### Indigo(Ubuntu 14.04)
```sh
$ cd ~/ubuntu-setup
$ ./install-ros-indigo.sh
```

#### Kinetic(Ubuntu 14.04)
```sh
$ cd ~/ubuntu-setup
$ ./install-ros-kinetic.sh
```



## Install development tools
Execute following command(This step takes 10-20minutes).
```sh
$ cd ~/ubuntu-setup
$ ./install-tools.sh
```


# Special Thanks
- http://wiki.ros.org/ROS/Installation/TwoLineInstall
- http://unskilled.site/linuxで日本語名ディレクトリを英語名に変換する方/

# License
This software is released under the BSD License, see LICENSE.
