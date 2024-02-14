#!/bin/zsh

if [ ! -d "$HOME/.fonts" ] ; then
    echo "Creating $HOME/.fonts folder"
    mkdir $HOME/.fonts
fi

echo "Installing SFMono Nerd Font"

cp "$CURR_DIR/assets/SFMono Regular Nerd Font Complete.otf" "$HOME/.fonts"

fc-cache -f

echo
