#!/bin/zsh

sudo apt-get -qq install neovim -y

# Install packages automatically
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
