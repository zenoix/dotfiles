#!/bin/zsh

if ! is_installed "julia" && ask "Install Julia?" ; then
    curl -fsSL https://install.julialang.org | sh
    echo
fi
