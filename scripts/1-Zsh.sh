#!/bin/bash

if [ $(basename $SHELL) != "zsh" ]; then
    if ! is_installed "zsh" && ask "Install Zsh and make it the default shell?"; then
        sudo apt-get install zsh -y
        echo "Password needed to change shell."
        chsh -s $(which zsh)
    elif ask "Zsh is already installed. Make Zsh the default shell?"; then
        echo "Password needed to change shell."
        chsh -s $(which zsh)
    fi
    echo
fi
