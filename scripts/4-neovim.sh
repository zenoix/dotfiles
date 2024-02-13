#!/bin/zsh

sudo apt-get install neovim -y

# Install packages automatically
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
