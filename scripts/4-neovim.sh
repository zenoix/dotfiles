#!/bin/zsh

if ! is_installed "nvim" ; then
    if ask "Install and configure Neovim?" ; then
        sudo apt-get -qq install neovim -y
        nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
    fi
else
    if ask "Neovim is already installed. Configure Neovim?" ; then
        nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
    fi
fi

