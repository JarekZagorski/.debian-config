#!/bin/bash

DIR=/home/${SUDO_USER}

function install_tmux() {
  apt install tmux -y
  rm ${DIR}/.tmux.conf
  ln -s ${DIR}/.debian-config/tmux/.tmux.conf ${DIR}/
}

install_tmux
