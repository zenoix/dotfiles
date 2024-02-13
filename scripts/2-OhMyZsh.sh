#!/bin/zsh

if ask "Install and configure Oh My Zsh?" ; then
    if ! is_installed "curl" ; then
        sudo apt-get -qq install curl -y
    fi

    if [ ! -d "$HOME/.oh-my-zsh" ] || [ -z "$ZSH" ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    fi


    if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ] ; then
        git clone -q https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    fi
fi

