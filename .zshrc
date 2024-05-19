autoload -Uz compinit && compinit

unsetopt beep

HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==02=01}:${(s.:.)LS_COLORS}")'

source $HOME/dotfiles/tools/dotup.sh

source ~/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

for file in $HOME/dotfiles/.config/zsh/*.zsh; do
    source $(realpath $file)
done

source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

