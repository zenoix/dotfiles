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

Idea and methodology is based on Dreams of Autonomy's video [Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)
