#!/bin/zsh

if [ ! -d "$HOME/.fonts" ] ; then
    mkdir $HOME/.fonts
fi

cp "$CURR_DIR/assets/SFMono Regular Nerd Font Complete.otf" "$HOME/.fonts"

fc-cache -f

echo
