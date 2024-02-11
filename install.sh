#!/bin/bash
#
# Script to help install programs used by the dotfiles for debian based systems

set -eu -o pipefail

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo privileges:"
    echo "sudo $0 $*"
    exit 1
fi

function ask() {
    read -p "$1 (Y/n): " response
    [ -z "$response" ] || [ "$response" = "y" ]
}

function is_installed() {
    command -v "$1" &> /dev/null 
}

zsh_enabled=false

for file in scripts/*; do
    fullpath=$(realpath $file)

    program=${file#"scripts/"}
    program=${program#*-}
    program=${program%".sh"}
   
    if [ $program == "Zsh" ]; then
        if [ $(basename $SHELL) == "zsh" ]; then
            zsh_enabled=true
            continue
        elif is_installed "zsh"; then
            if ask "Make Zsh the default shell?"; then
                chsh -s $(which zsh)
                zsh_enabled=true
            else
                continue
            fi
        elif ask "Install and configure ${program}?"; then
            source ${fullpath}
            zsh_enabled=true
            continue
        fi
    fi 

    if ask "Install and configure ${program}?"; then
        source ${fullpath}
    fi 
done
