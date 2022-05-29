#!/bin/bash

# TEST=${HOME}
DIR=/home/${SUDO_USER}

if ! [ $(id -u) = 0 ]; then
  echo "The script needs to be run as root." >&2
  exit 1
fi

function install_terminal() {
  apt install xfce4-terminal -y
  ln -s ${DIR}/.debian-config/xfce4/ ${DIR}/.config/
  update-alternatives --set x-terminal-emulator /usr/bin/xfce4-terminal.wrapper
}

install_terminal
