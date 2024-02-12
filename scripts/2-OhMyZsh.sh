#!/bin/zsh

if ! command -v "curl" &> /dev/null; then
    sudo apt-get install curl -y
fi

echo y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

