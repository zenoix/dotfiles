# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==02=01}:${(s.:.)LS_COLORS}")'

for file in $HOME/.zsh/*.zsh; do
    source $(realpath $file)
done

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

