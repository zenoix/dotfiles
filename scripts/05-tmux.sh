#!/bin/zsh

if ! is_installed "tmux" && ask "Install tmux?" ; then
    sudo apt-get install tmux -y
    echo
fi
