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

for file in scripts/*; do
    fullpath=$(realpath $file)

    program=${file#"scripts/"}
    program=${program#*-}
    program=${program%".sh"}
   
    if [ $program == "zsh" ]; then
        if [ $(basename $SHELL) == "zsh" ]; then
            continue
        elif is_installed "zsh" && ask "Make Zsh the default shell?" ; then
            chsh -s $(which zsh)
            continue
        fi
    fi 

    if ask "Install and configure ${program}?"; then
        source ${fullpath}
    fi
    
    echo ""
done
