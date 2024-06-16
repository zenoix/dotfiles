# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!
if [[ ":$PATH:" != *":$HOME/.juliaup/bin:"* ]]; then
    path=("$HOME/.juliaup/bin" $path)
    export PATH
fi


# <<< juliaup initialize <<<

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    path=("$HOME/.local/bin" $path)
    export PATH
fi

if [[ ":$PATH:" != *":$GOPATH/bin:"* ]]; then
    path=("$GOPATH/bin" $path)
    export PATH
fi
