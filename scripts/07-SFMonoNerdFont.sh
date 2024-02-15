#!/bin/zsh

if [ ! -d "$HOME/.fonts" ] ; then
    mkdir $HOME/.fonts
fi

for font in $CURR_DIR/assets/* ; do
    cp $(realpath $font) "$HOME/.fonts"
done

fc-cache -f

echo
