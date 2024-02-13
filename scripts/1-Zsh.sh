#!/bin/bash

if [ $(basename $SHELL) != "zsh" ]; then
    if ! is_installed "zsh" && ask "Install and configure Zsh?"; then
        sudo apt-get -qq install zsh -y
        chsh -s $(which zsh)
    elif ask "Zsh is already installed. Make Zsh the default shell?"; then
        chsh -s $(which zsh)
    fi
fi
