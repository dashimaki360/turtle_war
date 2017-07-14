#!/bin/bash
#set -eu

echo "# Player Name is $1"

echo "# git pull"
cd ~/$1/src/turtle_war/
git pull

echo "catkin_make"
cd ~/$1/
catkin_make

echo "# set rosworkspace path"
source ~/$1/devel/setup.bash

echo "# run"
cd ~/$1/src/turtle_war/
bash start.sh

echo "please close turminal after run"
cd ~/
