autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==02=01}:${(s.:.)LS_COLORS}")'

for file in $HOME/dotfiles/.config/zsh/*.zsh; do
    source $(realpath $file)
done

source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

