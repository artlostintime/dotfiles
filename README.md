# DMS (Dotfiles Managment System)

To manage our .dotfiles, We'll use STOW.

# Prerequisite :

Ensure you have the following installed on your system.

- Git
- GNU Stom

# TMUX :

TMUX is a terminal multiplexer. It lets you switch easily between several programs in one terminal.

### Installation :

Use the following commands to install TMUX on your platform:

| Platform               | Install Command       |
| ---------------------- | --------------------- |
| Arch Linux             | `pacman -S tmux`      |
| Debian or Ubuntu       | `apt install tmux`    |
| Fedora                 | `dnf install tmux`    |
| RHEL or CentOS         | `yum install tmux`    |
| macOS (using Homebrew) | `brew install tmux`   |
| macOS (using MacPorts) | `port install tmux`   |
| openSUSE               | `zypper install tmux` |

> Note: These commands may require root privileges. Use `sudo` if necessary.

For more information, refer to the [TMUX Installation WiKi](https://github.com/tmux/tmux/wiki)

# TPM - TMUX Package Manager

TPM is a package manager for TMUX.

### Set-Up :

Prerequisites: `tmux` version 1.9 (or higher), `git`, `bash`.

Clone TPM:

```bash
git clone https://github.com/tmux-plugins/tpm ~/dotfiles/.tmux/plugins/tpm
```

Add this to the bottom of `~/.tmux.conf ($XDG_CONFIG_HOME/tmux/tmux.conf` works too ):

# Dotfiles SetUp :

First, clone the dotfiles repository in your $HOME directory:

```bash
     git clone git@github.com:artlostintime/dotfiles.git
     cd dotfiles/
```

Note: `SSH` setup is required before using this command.

> NOTE: Should have ssh setup before using this command.

Then, use GNU stow to create symlinks:

```bash
     stow .
```

This will create symlinks for all the dotfiles in the current directory.
