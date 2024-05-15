function dotup() {
    echo 'Updating dotfiles...\n'
    git -C $HOME/dotfiles pull origin main --progress
    return 0
}

