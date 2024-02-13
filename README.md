# My dotfiles

This directory contains the dotfiles for my Pop OS system.

It includes the files for the following applications:
- Zsh and Oh My Zsh
- Alacritty
- Neovim (using Packer)
- tmux (using TPM)

## Requirements

Ensure you have the following installed on your system.

### Git

```zsh
sudo apt install git-all
```

### Zsh and Oh My Zsh

#### Zsh
If Zsh is not already installed, run

```bash
sudo apt install zsh
```
then make it the default shell by running

```bash
chsh -s $(which zsh)
```
before logging out and logging in again. Lastly, check if it worked by running

```bash
echo $SHELL
```

#### Oh My Zsh
Oh My Zsh also needs to be installed as well. Use
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
to install Oh My Zsh.

The theme I use is [Spaceship](https://spaceship-prompt.sh/).

```zsh
$ git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
$ ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```
and I also use the following Oh My Zsh plugins:
- git
- copypath
- copydir
- zsh-autosuggestions
- z

The last of which needs to be installed as well.

```zsh
$ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
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

- Idea and methodology is based on Dreams of Autonomy's video [Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs).

- Install scripts were inspired by Bartek Spitza's video [Solving the Dotfiles Problem (And Learning Bash)](https://youtu.be/mSXOYhfDFYo?si=6BHSafkDKpf1OEvq).

## TODO

- Create nvim.sh install script
  - Make nvim the VISUAL and EDITOR
  - Fix packer automatic install
- Create tmux.sh install script
  - See if there's a way to install the packages automatically
- Create alacritty.sh install script
  - Make alacritty default terminal
- Create conda.sh install script
  - Find a way to get the latest version from conda download
- Create R.sh install script
- Create julia.sh install script
- Create firefox.sh install script
  - Make firefox default browser
-  Update documentation for the install scripts
