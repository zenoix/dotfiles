# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    copypath
    copyfile
    zsh-nvm
    z
)


for file in $HOME/dotfiles/.config/zsh/*; do
    source $(realpath $file)
done


# eval "$(starship init zsh)"
