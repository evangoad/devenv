# `devie`

A forkable command line companion that streamlines and simplifies the installation of your dot files and dev tools for [Unix-likes](https://en.wikipedia.org/wiki/Unix-like).  Get `vim`, `zsh`, and `tmux` installed and configured on your Unix-like in one command.

`devie` is best used when it's [forked like dotfiles](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/), allowing you to customize the scripts by editing the files directly in your own repository!

`devie` provides a [dotfiles directory](dotfiles/) to house all of your favorite dotfiles, and provides a simple command line interface to create the appropriate symlinks in your Unix-like's `$HOME` folder.  

`devie` also provides an  [install directory](install/), including a suite of premade install scripts for  Unix-likes [Cygwin](install/cygwin/), [OSX](install/osx/), [Archlinux](install/archlinux/), and [Ubuntu](install/ubuntu) that ensure you have what you need to start developing immediately.

# Install

It is recommended that you [fork this repo](https://help.github.com/articles/fork-a-repo/), then clone a copy to your Unix-like's `$HOME` directory:

```bash
git clone git@github.com:evangoad/devie $HOME/.devie && export PATH="$HOME/.devie:$PATH" && export DEVIE_PATH="$HOME/.devie"
```

check that `devie` is installed:

```bash
devie -h
```

# Usage


## 1. run `devie` command

archlinux 

```bash
devie -lalg 
```

ubuntu

```bash
devie -lulg
```

cygwin

```bash
devie -lclg
```

osx

```bash
devie -lolg
```

## 2. start `zsh`

```bash
zsh
```

# Packages included

Below are links to the install scripts responsible for installing `vim`, `zsh`, `tmux`, `docker`, and many more on your Unix-like.  After your fork, remove whatever you don't need and add the packages most important to your development experience:

### archlinux

[pacman](install/archlinux/pacman#L5), [yaourt](install/archlinux/yaourt#L5)

### cygwin

[apt-cyg](install/cygwin/apt-cyg#L5), [choco](install/cygwin/choco#L11)

### osx

[brew](install/osx/brew#L6-L7)

### ubuntu

[apt-get](install/ubuntu/apt-get#L5)


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/evangoad/devie/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

