#!/usr/bin/env zsh


# if ![ "`git log --pretty=%H ...refs/heads/master^ | head -n 1`" = "`git ls-remote origin -h refs/heads/master |cut -f1`" ] then
# print -P "%F{blue}Info:%f Dotfiles update available.\n"
# vared -p 'Would you like to update now (y/n)? ' -c tmp
# end

print -P "%B%F{green}Info:%f%b Dotfiles update available.\n"

if read -q 'choice?Would you like to update now? (y/n) '; then
    echo "lol"
else
    echo "\n"
    print -P "You will not be asked again until the next dotfile version.\nUse %F{yellow}dotup%f to manually update the dotfiles."
fi


