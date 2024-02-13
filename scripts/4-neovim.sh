#!/bin/zsh

if ! is_installed "nvim" && ask "Install Neovim?" ; then
        sudo apt-get install neovim -y
fi

