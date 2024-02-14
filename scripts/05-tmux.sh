#!/bin/zsh

if ! is_installed "tmux" && ask "Install tmux?" ; then
    sudo apt-get install tmux -y
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

    echo
fi
