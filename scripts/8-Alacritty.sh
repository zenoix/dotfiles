#!/bin/zsh

if ! is_installed "alacritty" && ask "Install Alacritty?"; then
    sudo apt-get install alacritty
    sudo update-alternatives --config x-terminal-emulator
    echo
fi
