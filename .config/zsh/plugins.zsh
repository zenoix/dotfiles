ZSH_PLUGINS_DIR="/usr/share/zsh/plugins"

# Zsh syntax highlighting
source $HOME/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

source $ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Zsh autosuggestions
source $ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh


# Zoxide
eval "$(zoxide init zsh)"


# fzf keybindings and fuzzy finding
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fzf --zsh)"

# fzf git
source $ZSH_PLUGINS_DIR/fzf-git.sh/fzf-git.sh

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

# Create custom fzf completion for tmux workspaces
_fzf_complete_ws() {
    _fzf_complete +m --reverse --header="Select Tmux workspace" -- "$@" < <(
    fd . $HOME/.tmuxp
)
}

# Redefine this function to change the options
_fzf_git_fzf() {
  fzf --height=50% --tmux 90%,80% -- \
    --layout=reverse --multi --min-height=20 --border \
    --border-label-pos=2 \
    --color='header:italic:underline,label:blue' \
    --preview-window='right,50%,border-left' \
    --bind='ctrl-/:change-preview-window(down,50%,border-top|hidden|)' "$@"
}

export FZF_GIT_PAGER="less -FX"
