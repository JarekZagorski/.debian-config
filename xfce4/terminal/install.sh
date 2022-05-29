#!/bin/bash

# TEST=${HOME}
DIR=/home/${SUDO_USER}

function install_terminal() {
  apt install xfce4-terminal -y
  ln -s ${DIR}/.debian-config/xfce/ ${DIR}/.config/
  update-alternatives --set x-terminal-emulator /usr/bin/xfce4-terminal.wrapper
}

install_terminal
