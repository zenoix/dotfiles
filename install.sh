#!/bin/bash
#
# Script to help install programs used by the dotfiles for debian based systems

function ask() {
    read -p "$1 (Y/n): " response
    [ -z "$response" ] || [ "$response" = "y" ]
}

for file in scripts/* 
do
    fullpath=$(realpath $file)

    program=${file#"scripts/"}
    program=${program%".sh"}
    
    if [ $program == "zsh" ] && [ $(basename $SHELL) == "zsh" ]; then
        continue
    fi

    if ask "Install ${program}?"; then
        source ${fullpath}
    fi
done
