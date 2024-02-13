#!/bin/bash
#
# Script to help install programs used by the dotfiles for debian based systems

set -eu -o pipefail

CURR_DIR=$(dirname "$0")

for helper in $CURR_DIR/helpers/*; do
    source $(realpath $helper)
done

zsh_enabled=false

for file in $CURR_DIR/scripts/*; do
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
            fi
            continue
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
