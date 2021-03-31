# ubuntu-setup
Setup ubuntu and install development tools, ROS, etc...  
These scripts are tested in Ubuntu 14.04 LTS and 16.04 LTS 18.04 LTS.

# Setup
## Install git and curl

```sh
$ sudo apt update
$ sudo apt -y install git
$ sudo apt -y install curl
```

## Clone repository
Execute following command:

```sh
$ cd && git clone https://github.com/karaage0703/ubuntu-setup
```

## Update .bashrc
Execute following command:

```sh
$ curl -l https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/bashrc.patch >> ~/.bashrc
```

## Change light Window manager

```sh
$ sudo apt install -y lubuntu-gtk-core
```

Select lightdm

```sh
$ sudo apt install -y lubuntu-desktop fcitx-mozc
```

Select lubuntu from upper right icon of login screen

## Install VS Code Editor
Execute following command:

```sh
$ curl -s https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/install-vscode.sh | /bin/bash
```

## Change Directory name from Japanese to English(Japanese only)
Execute following command:

```sh
$ LANG=C xdg-user-dirs-gtk-update
```

## Clock Adjust
Execute following command:

```sh
$ sudo date --set @"$(wget -q https://ntp-a1.nict.go.jp/cgi-bin/jst -O - | sed -n 4p | cut -d. -f1)"
```

You can execute above command under proxy.

## Install Docker and NVIDIA Container Toolkit
Install Docker:

```sh
$ curl -s https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/install-docker.sh | /bin/bash
```

Install NVIDIA Container Toolkit:

```sh
$ curl -s https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/install-nvidia-container-toolkit.sh | /bin/bash
```

Install NVIDIA Docker:

```sh
$ curl -s https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/install-nvidia-docker.sh | /bin/bash
```

## Install ROS
Execute following command(This step takes 10-20minutes).

### Indigo(Ubuntu 14.04)

```sh
$ cd ~/ubuntu-setup && ./install-ros-indigo.sh
```

### Kinetic(Ubuntu 16.04)

```sh
$ cd ~/ubuntu-setup && ./install-ros-kinetic.sh
```


### Melodic(Ubuntu 18.04)

```sh
$ curl -s https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/install-ros-melodic.sh | /bin/bash
```

## Install development tools
Execute following command(This step takes 10-20minutes):

```sh
$ cd ~/ubuntu-setup && ./install-tools.sh
```


# Special Thanks
- http://wiki.ros.org/ROS/Installation/TwoLineInstall
- http://unskilled.site/linuxで日本語名ディレクトリを英語名に変換する方/

# License
This software is released under the BSD License, see LICENSE.
