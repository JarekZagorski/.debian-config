#!/bin/bash

function install_vim() {
  apt install vim -y
  rm -rf /home/${SUDO_USER}/.vim
  ln -s /home/${SUDO_USER}/.debian-config/vim /home/${SUDO_USER}/.vim
}

install_vim
