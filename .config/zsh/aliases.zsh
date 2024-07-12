# Replace vi and vim with neovim
alias vi="nvim"
alias vim="nvim"

# Add cls as clear screen
alias cls="clear"

# Replace cat with bat
alias cat="bat"

# Add python to python3
alias python="python3"

# Replace type with with type -a
alias type="type -a"

# Replace mkdir with mkdir -p
alias mkdir="mkdir -p"

# Fuzzy finding aliases
alias fman="compgen -c | fzf | xargs man"
alias frm="fd . -H | fzf -m --header 'Select files to move with tab then enter' --preview 'bat --style=numbers --color=always {}' | awk '{print $2}' | xargs -r rm"

# Tmux workspaces
alias ws="tmuxp load"
