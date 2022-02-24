#!/bin/bash
sudo apt update

# software development tool
sudo apt -y install ssh
sudo apt -y install chrony  			# synchronized clock
sudo apt -y install byobu				# virtual terminal
sudo apt -y install vim                 # Editor
sudo apt -y install vim-gtk             # Editor
sudo apt -y install kazam				# video capture
# sudo apt -y install rlwrap				# completion
# sudo apt -y install exuberant-ctags		# ctag
# sudo apt -y install chromium-browser	# Chromium browser
sudo apt -y install arandr	            # multi display

# Google chrome install
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
