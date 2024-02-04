# DMS (Dotfiles Managment System)

To manage our .dotfiles, We'll use STOW.

# Requirements :

Ensure you have the following installed on your system

### Git :

`sudo apt install git`

### OpenSUSE :

`sudo zypper install stow`

### Dabian :

`Sudo apt install stow`

# Recomended :

#### FISH SHELL

#### STARSHIP THEME

# Installation :

First, check out the dotfiles repo in your $HOME directory using git.

```
    $ git clone --recursive git@github.com:artlostintime/dotfiles.git
    $ cd dotfiles/
```

then use GNU stow to create symlinks

```bash
    $ stow .
```
