#!/bin/zsh

if ! is_installed "stow" && ask "Install GNU Stow?" ; then 
    sudo apt-get install stow -y
    echo
fi
