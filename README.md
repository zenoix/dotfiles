# My dotfiles

This directory contains the dotfiles for the main tools I use on my Pop OS system.

It includes the dotfiles for the following:
- Zsh and Starship prompt
- Bat
- Zoxide
- Zsh-autosuggestions
- Node version manager
- Alacritty
- Neovim (with lazy.nvim)
- tmux (with TPM)
- Miniconda
- R
- Julia
- Ruff
and some other useful tools.


GNU stow is used to keep all the dotfiles in one directory, allowing for easier version control, maintenance, and easier symlinking. 

## Installation

### Prerequisites

Ensure you have the following:

- Git
- A [nerd font](https://www.nerdfonts.com/) or patched font

> [!TIP]
> I designed this repo to be placed in the home (`~/`) directory. If you choose to place it somewhere else, you may have to change some of the configurations.


### Setting Up the Dotfiles

If you do not want to use GNU stow or would like to maintain all of your dotfiles yourself, you can copy whatever files you like from this repository. 

Otherwise, if you'd like to use GNU stow to maintain all of your sym links for you, you can replace or add any of the files with ones you already have and would like to keep.

> [!WARNING]
> Once your files have been added to the dotfiles folder, make sure you delete the file from its original location. This is due to stow not being able to create a symlink if the file is there. If you run `stow . --adopt`, it will **replace** the file in the dotfile folder with the one in the original location which will overwrite any changes to the dotfile files.

You can install GNU stow by running

```
sudo apt install stow
```

> [!IMPORTANT]
> Make sure that the file structure of the dotfiles is the same as it would be in the HOME directory. E.g. if you have a dotfile `/home/user/foo/.bar`, make sure that it's placed in `dotfiles/foo/`

To use GNU stow to setup the symlinks, in the dotfiles directory run

```
$ stow .
```

That should symlink all the files for you.

#### Excluding Directories and Files from Stowing
If you'd like to ignore directories or files from being symlinked by stow, you can either delete them or add them into the `.stow-local-ignore` file.


## Usage

- Replace the `.gitconfig` with your config.
- Run `stow .` whenever you want to create or update the symlinks.

## References

- Idea and methodology is based on Dreams of Autonomy's video [Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs).

