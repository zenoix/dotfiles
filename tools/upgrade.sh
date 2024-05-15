#!/usr/bin/env zsh

latest_remote=$(git -C $HOME/dotfiles ls-remote origin -h refs/heads/main |cut -f1)

if [[ "`git -C $HOME/dotfiles log --pretty=%H ...refs/heads/main^ | head -n 1`" != $latest_remote ]] && [[ $DOT_LATEST_IGNORED_COMMIT != $latest_remote ]] ; then
    print -P "%B%F{green}Info:%f%b Dotfiles update available.\n"

    if read -q 'choice?Would you like to update now? (y/n) '; then
        echo "\n"
        dotup
    else
        echo "\n"
        print -P "You will not be asked again until the next dotfile version.\nUse %F{yellow}dotup%f to manually update the dotfiles."
        export DOT_LATEST_IGNORED_COMMIT=latest_remote
    fi
fi

