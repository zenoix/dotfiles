# Zsh syntax highlighting
source $HOME/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Zsh autosuggestions
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Zoxide
eval "$(zoxide init zsh)"


# fzf keybindings and fuzzy finding
[ -f $HOME/dotfiles/.config/zsh/fzf.zsh ] && source $HOME/dotfiles/.config/zsh/fzf.zsh
eval "$(fzf --zsh)"

# fzf git
source $HOME/.config/zsh/plugins/fzf-git.sh/fzf-git.sh

export FZF_DEFAULT_OPTS="
--border sharp
--prompt '∷ '
--info=inline
--height=70%
--multi
--bind 'ctrl-a:select-all'
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
"

export FZF_CTRL_T_OPTS="
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--bind 'ctrl-p:toggle-preview'
"

export FZF_CTRL_R_OPTS="
--layout=reverse
"

# Use fd for fzf
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
    fd --type=d --hidden --exclude .git . "$1"
}
