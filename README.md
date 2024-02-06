# DMS (Dotfiles Management System)

A Dotfiles Management System (DMS) organizes configuration files (dotfiles) in Unix-like systems for easy tracking, backup, and synchronization across machines. It often uses a version control system like Git and symbolic links (symlinks) to manage these files. Tools like GNU Stow can simplify the process by managing dotfiles in a tidy directory structure and creating necessary symlinks with a single command.

> [!NOTE] To manage our `.dotfiles`, We'll use `STOW`.

# Prerequisite :

Ensure you have the following installed on your system.

- Git
- [GNU Stom](https://www.gnu.org/software/stow/manual/stow.html#Introduction)

---

# TMUX :

TMUX is a powerful, robust terminal multiplexer that allows you to manage multiple terminal sessions within a single window or terminal session. It is a valuable tool for streamlining your workflow and increasing productivity, especially in a remote or command-line intensive environment.

- ### Key Features

  - **Session Management:** TMUX allows you to create, detach, and reattach to sessions seamlessly. This means you can start a process within TMUX, detach it, and then reattach it later without interrupting the process.

  - **Window Management:** Within each session, TMUX supports multiple windows, each with its own command-line interface, which can be switched between effortlessly.

  - **Pane Splitting:** TMUX provides the ability to split your terminal window into multiple panes, each of which is essentially a separate terminal instance. This is particularly useful for monitoring multiple streams of output or working on several files at once.

  - **Customizable:** TMUX is highly customizable. You can modify key bindings, change the status line, set the default terminal, and much more through the .tmux.conf configuration file.

  - **Scriptable:** TMUX sessions can be manipulated and controlled programmatically, which opens up a wide range of possibilities for automation and complex workflows

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

> [!TIP]
> These commands may require root privileges. Use `sudo` if necessary.

For more information, refer to the [TMUX Installation WiKi](https://github.com/tmux/tmux/wiki)

# Dotfiles SetUp :

First, clone the dotfiles repository in your $HOME directory:

```bash
     git clone git@github.com:artlostintime/dotfiles.git
     cd dotfiles/
```

> [!IMPORTANT] > `SSH` setup is required before using this command.

# TPM - TMUX Package Manager

TPM is a package manager for TMUX.

### Set-Up :

Prerequisites: `tmux` version 1.9 (or higher), `git`, `bash`.

Clone TPM:

```bash
git clone https://github.com/tmux-plugins/tpm ~/dotfiles/.tmux/plugins/tpm
```

Add this to the bottom of `~/.tmux.conf ($XDG_CONFIG_HOME/tmux/tmux.conf` works too ):

Then, use GNU stow to create symlinks:

```bash
     stow .
```

This will create symlinks for all the dotfiles in the current directory.

> [!WARNING]
> Getting `tmux source ~/.config/tmux/tmux.conf return 126`, while sourcing from `tmux source ~/.config/tmux/tmux.conf`

The error `code 126` typically means that the file you're trying to execute (in this case `~/.tmux/plugins/tpm/tpm`) is not executable.

You can change the file permissions to make it executable by running the following command in your terminal:

```bash
     chmod +x ~/.tmux/plugins/tpm/tpm
```
