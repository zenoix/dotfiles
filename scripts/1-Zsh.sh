#!/bin/bash

if [ $(basename $SHELL) == "zsh" ]; then
    exit
elif is_installed "zsh"; then
    if ask "Make Zsh the default shell?"; then
        chsh -s $(which zsh)
    fi
elif ask "Install and configure ${program}?"; then
    sudo apt-get install zsh -y
    chsh -s $(which zsh)
fi

