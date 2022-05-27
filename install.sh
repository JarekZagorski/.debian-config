#!/bin/bash

# TEST=${HOME}
DIR=${PWD}/..

function install_terminal() {
  apt install xfce4-terminal -y
  ln -s ${DIR}/.debian-config/xfce/ ${DIR}/.config/
}

install_terminal
