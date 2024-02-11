# My dotfiles

This directory contains the dotfiles for my Pop OS system.

It includes the files for the following applications:
- Zsh and Oh My Zsh
- Alacritty

## Requirements

Ensure you have the following installed on your system.

### Git

```zsh
sudo apt install git-all
```

### GNU Stow

```zsh
sudo apt install stow
```

## Installation

First, clone this repo into the `$HOME` directory using git.

```zsh
$ git clone git@github.com:Zenoix/dotfiles.git
$ cd fotfiles
```

then use GNU stow to create symlinks.

```zsh
$ stow .
```

## References

Idea and methodology is based on Dreams of Autonomy's video [Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)
