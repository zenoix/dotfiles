#!/bin/zsh

if ! is_installed "conda" && ask "Install Miniconda?" ; then
    mkdir -p ~/miniconda3
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
    rm -rf ~/miniconda3/miniconda.sh

    if is_installed "zsh" ; then 
        ~/miniconda3/bin/conda init zsh
    fi

    ~/miniconda3/bin/conda init bash
    
    echo
fi
