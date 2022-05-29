#!/bin/bash

DIR=/home/${SUDO_USER}

function install_tmux() {
  apt install tmux -y
  ln -s ${DIR}/.debian-config/tmux/.tmux.conf ${DIR}/
}

install_tmux
