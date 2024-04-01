# If running WSL, alias nvim to the WSL's one
if uname -r | grep -q "Microsoft" ; then
    alias nvim="~/bin/nvim/squashfs-root/AppRun"
end

# Replace vi and vim with neovim
alias vi="nvim"
alias vim="nvim"

# Add cls as clear screen
alias cls="clear"

# Add python to python3
alias python="python3"

# Run tor browser aliases
alias tor="cd /usr/lib/tor-browser/;./start-tor-browser.desktop;cd -"
alias tor-browser="cd /usr/lib/tor-browser/;./start-tor-browser.desktop;cd -"

# Add clamscan alias
alias virusscan="clamscan -r -i"
