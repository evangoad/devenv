# `devenv`

[![Build Status](https://travis-ci.org/evangoad/devenv.svg?branch=master)](https://travis-ci.org/evangoad/devenv)

This is a simple python script that runs ansible playbooks in order to install
and configure my shell, editor, and multiplexer.  `devenv` currently supports
OSX and Ubuntu, and it only requires that `git` and `python` are installed
(plus `brew` if you are installing on OSX).  See the [installation
script](install.sh) and [Requirements](REQUIREMENTS.md) for more info.

# Usage

see what options devenv has:

<img src="https://raw.githubusercontent.com/evangoad/devenv/master/img/devenv-h.gif" width=640>>

use it to symlink your dotfiles:

<img src="https://raw.githubusercontent.com/evangoad/devenv/master/img/devenv--tags-dotfiles.gif" width=640>>

use it to update all of your multiplexer configuration:

<img src="https://raw.githubusercontent.com/evangoad/devenv/master/img/devenv--tags-mux.gif" width=640>>

# How it Works

`devenv` is a simple python script that runs OSX and Ubuntu specific ansible
[playbooks](playbooks/). Move your existing dotfiles into the ["files" directory
in the dotfile role](playbooks/roles/dotfiles/files) and run `devenv` to update
your environment.

# What you get out of the box

- Travis-ci configuration to automate your tests for both OSX and Ubuntu.
- Single command install, single command update of your shell, editor,
  multiplexer, and dotfiles.
- Easy to customize by writing ansible code.  Every thing happens in the short
  [install.sh](install.sh/) script and the [ansible playbooks](playbooks/).
  Create new [roles](playbooks/roles) and use them in the
  playbook files.

# How can I use this?

This repository was intentionally designed to be [forked like
dotfiles](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).
In order to install and use your own customizable copy of `devenv`:

- Follow the instructions in the [Forking documentation](FORKING.md)
- For an install by https clone, use the install script:

```bash
curl -fsSL https://raw.githubusercontent.com/evangoad/devenv/master/install.sh | bash
```
  OR Install by ssh cloning and `pip`:

```bash
git clone git@github.com:evangoad/devenv.git ~/.devenv
pip install ~/.devenv
```

- Generate help output to ensure `devenv` is installed:

```bash
devenv -h
```

