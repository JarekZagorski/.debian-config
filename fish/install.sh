#!/bin/bash

function install_fish() {
  apt install fish -y
  ln -s /home/${SUDO_USER}/.debian-config/fish /home/${SUDO_USER}/.config/fish
  su ${SUDO_USER}
  echo /usr/bin/fish | sudo tee -a /etc/shells
  chsh -s /usr/bin/fish
}

install_fish
