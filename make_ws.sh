#!/bin/bash
set -eu

echo "# Player Name is $1"

echo "# make ws"
mkdir -p ~/$1/src
cd ~/$1/src
catkin_init_workspace
cd ~/$1
catkin_make

echo "# git clone"
cd ~/$1/src
git clone https://github.com/$1/turtle_war


