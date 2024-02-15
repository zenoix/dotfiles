#!/bin/zsh

if ! is_installed "alacritty" && ask "Install Alacritty?"; then
    git clone https://github.com/alacritty/alacritty.git
    cd alacritty

    curl https://sh.rustup.rs -sSf | sh -s -- -y

    source "$HOME/.cargo/env"

    rustup override set stable
    rustup update stable

    sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 -y

    cargo build --release

    sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
    sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
    sudo desktop-file-install extra/linux/Alacritty.desktop
    sudo update-desktop-database

    cd ..

    rm -rf ./alacritty

    sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/alacritty 50
    echo
fi
