# My dotfiles

This directory contains the dotfiles for the main tools I use on my Pop OS system.

It includes the files for the following:
- Zsh and Oh My Zsh
- Alacritty
- Neovim (using lazy.nvim)
- tmux (using TPM)
- Miniconda
- R
- Julia
- SF Mono Nerd Font by [epk](https://github.com/epk/SF-Mono-Nerd-Font)

GNU stow is used to keep all the dotfiles in one directory, allowing for easier version control and maintenance and easier symlinking. 

## Installation

### Prerequisites

Ensure you have the following:

- Git
- A debian based operating system (if using the installation script)

If you do not have git, you can install it using the following:
```bash
$ sudo apt install git-all
```
> [!TIP]
> Cloning this repo to the location where you want to 


### Using the Installation Script
I have included a script, `install.sh`, to help with the installation process. It will check to see if the applications are installed and if they are not, will prompt you asking if you'd like to install them.

> [!WARNING]
> The script assumes that none of the tools mentioned earlier are installed. If they are, please backup any important files.

If you would prefer to do it manually, or have more control over what gets installed/configured, refer to the next section *Manually Setting Up the Dotfiles*.

#### Getting Started

To run the script, enter the following into your terminal

```bash
$ ./install.sh
```
and follow the prompts that appear.

### Manually Setting Up the Dotfiles

If you do not want to use GNU stow or would like to maintain all of your dotfiles yourself, you can copy whatever files you like from this repository. 

Otherwise, if you'd like to use GNU stow to maintain all of your sym links for you, you can replace or add any of the files with ones you already have and would like to keep.

> [!WARNING]
> Once your files have been added to the dotfiles folder, make sure you delete the file from its original location. This is due to stow not being able to create a sym link if the file is there. If you run `stow . --adopt`, it will **replace** the file in the dotfile folder with the one in the original location which will overwrite any changes to the dotfile files.

You can install GNU stow by running

```
sudo apt install stow
```

> [!IMPORTANT]
> Make sure that the file structure of the dotfiles is the same as it would be in the HOME directory. E.g. if you have a dotfile `/home/user/foo/.bar`, make sure that it's placed in `dotfiles/foo/` 

My dotfiles and structure are shown below.

```
.
├── .condarc
├── .config
│   ├── alacritty
│   │   ├── alacritty.yml
│   │   └── catppuccin
│   │       ├── catppuccin-frappe.yml
│   │       ├── catppuccin-latte.yml
│   │       ├── catppuccin-macchiato.yml
│   │       └── catppuccin-mocha.yml
│   ├── nvim
│   │   ├── init.lua
│   │   ├── lazy-lock.json
│   │   └── lua
│   │       └── zenoix
│   │           ├── core
│   │           │   ├── init.lua
│   │           │   ├── remap.lua
│   │           │   └── set.lua
│   │           ├── lazy.lua
│   │           └── plugins
│   │               ├── autopairs.lua
│   │               ├── catppuccin.lua
│   │               ├── cmp-cmdline.lua
│   │               ├── init.lua
│   │               ├── iron.lua
│   │               ├── lsp
│   │               │   ├── lspconfig.lua
│   │               │   └── mason.lua
│   │               ├── lualine.lua
│   │               ├── nvim-cmp.lua
│   │               ├── nvim-r.lua
│   │               ├── telescope.lua
│   │               └── treesitter.lua
│   └── spaceship.zsh
├── .gitconfig
├── .oh-my-zsh
│   └── custom
│       ├── aliases.zsh
│       ├── conda.zsh
│       ├── env.zsh
│       ├── PATH.zsh
│       └── tmux.zsh
├── .stow-local-ignore
├── .tmux.conf
└── .zshrc
```

To use GNU stow to setup the sym links, in the dotfiles directory run

```
$ stow .
```

That should symlink all the files for you.

#### Excluding Directories and Files from Stowing
If you'd like to ignore directories or files from being symlinked by stow, you can either delete them or add them into the `.stow-local-ignore` file.


## Usage

- Replace the `.gitconfig` with your config.
- Run `stow .` whenever you want to create or update the sym links.

## References

- Idea and methodology is based on Dreams of Autonomy's video [Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs).

- Install scripts were inspired by Bartek Spitza's video [Solving the Dotfiles Problem (And Learning Bash)](https://youtu.be/mSXOYhfDFYo?si=6BHSafkDKpf1OEvq).

## TODO

- Figure out how to install nvm with omz
- Install firefox script 
