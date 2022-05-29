#!/bin/bash

if ! [ $(id -u) = 0 ]; then
  echo "The script needs to be run as root." >&2
  exit 1
fi

tmux/install.sh
wallpapers/install.sh
xfce4/terminal/install.sh
vim/install.sh
