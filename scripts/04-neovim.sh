#!/bin/zsh

if ! is_installed "nvim" && ask "Install Neovim?" ; then
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    sudo mv nvim.appimage /usr/local/bin/nvim
    echo
fi

