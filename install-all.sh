#!/bin/bash

current_dir=`dirname $0`
echo "[Change Setup Directory]"
cd $current_dir
echo `pwd`

echo "[Install ROS]"
./install-indigo-ros.sh

echo "[Change Setup Directory]"
cd $current_dir
echo `pwd`

echo "[Install tools]"
./install-tools.sh

exit 0

