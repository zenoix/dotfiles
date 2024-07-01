# Setup fzf
# ---------
if [[ ! "$PATH" == "*/$HOME/dotfiles/.config/zsh/plugins/fzf/bin*" ]]; then
    PATH="${PATH:+${PATH}:}/$HOME/dotfiles/.config/zsh/plugins/fzf/bin"
fi

source <(fzf --zsh)
