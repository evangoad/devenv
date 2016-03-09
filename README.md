# `devenv`

[![Build Status](https://travis-ci.org/evangoad/devenv.svg?branch=master)](https://travis-ci.org/evangoad/devenv)

Pronounced "dev envy", this is a simple python script that runs ansible to help
manage my dotfiles and the programs that run them, specifically:

`vim`, `tmux`, `zsh`, `vundle`, `oh-my-zsh`, `fzf`, `silver searcher`, and more

The only requirements are that you have git and curl installed in a terminal.
`devenv` currently supports OSX and Ubuntu, and it only requires that `git` be
installed (plus `brew` if you are installing on OSX). See
[Requirements](REQUIREMENTS.md) for more info.

# Usage

Symlink your dotfiles and install the programs required to run them:

```bash
devenv
```

# How it Works

`devenv` is a simple python script that runs OSX and Ubuntu specific ansible
[playbooks](playbooks/). Move your existing dotfiles into the [dotfile role's
"file" directory](playbooks/roles/dotfiles/files) and run `devenv` to update
your environment.

# What you get out of the box

- Travis-ci configuration to automate your tests for both OSX and Ubuntu
- Single command install, single command update of your dev environment and
  dotfiles
- Easy to customize by writing ansible code.  Every thing happens in the short
  [install.sh](install.sh/) script and the [ansible playbooks](playbooks/).
  Create new [roles](playbooks/roles) and use them in the
  [playbook](playbooks/ubuntu.yml) [files](playbooks/osx.yml).
- SOON: jekyll based github pages website to document the usage of your `devenv`

# How can I use this?

This repository was intentionally designed to be [forked like
dotfiles](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).
In order to install and use your own customizable copy of `devenv`:

- Follow the instructions in the [Forking documentation](FORKING.md)
- For an install by https clone, use the install script:

```bash
curl -fsSL https://raw.githubusercontent.com/evangoad/devenv/master/install.sh | bash
```
  OR Install by ssh cloning and running `pip`:

```bash
git clone git@github.com:evangoad/devenv.git ~/.devenv
pip install ~/.devenv
```

- ensure `devenv` is installed:

```bash
devenv --version
```

