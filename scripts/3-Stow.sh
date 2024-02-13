#!/bin/zsh

if ! is_installed "stow" && ask "Install GNU Stow?" ; then 
    sudo apt-get -qq install stow -y
fi
