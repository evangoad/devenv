[![Build Status](https://travis-ci.org/evangoad/devenv.svg?branch=master)](https://travis-ci.org/evangoad/devenv)

`devenv` is a simple python script that runs ansible in order to install
and configure my [editor](roles/editor),
[shell](roles/shell), and [multiplexer](roles/mux).
`devenv` currently supports OSX and Ubuntu, and it only requires that `git` and
`python` are installed (plus `brew` if you are installing on OSX).  See the
[installation
script](https://github.com/evangoad/devenv/blob/master/install.sh) and
[Requirements](REQUIREMENTS.md) for more info.

`devenv` will update and configure:

- [vim](https://github.com/vim/vim) the editor
- [zsh](https://github.com/zsh-users/zsh) the shell, with
  [antigen](https://github.com/zsh-users/antigen)
- [tmux](https://github.com/tmux/tmux) the multiplexer, with
  [tpm](https://github.com/tmux-plugins/tpm)
- [ag](https://github.com/ggreer/the_silver_searcher)
- [fzf](https://github.com/junegunn/fzf) 
- [keychain](https://github.com/funtoo/keychain)
- [netcat](http://netcat.sourceforge.net/)
- [node](https://github.com/nodejs/node)
- [tree](https://linux.die.net/man/1/tree)
- [vtop](https://github.com/MrRio/vtop)
- [z](https://github.com/rupa/z)

# Usage

```
usage: devenv [-h] [-s] [-l] [-t [TAGS [TAGS ...]]]

install applications and symlink dotfiles

optional arguments:
  -h, --help            show this help message and exit
  -s                    Run ansible-playbook with --syntax-check option
  -l                    Omit the initial 'git pull' step and run your local
                        version of the roles
  -t [TAGS [TAGS ...]]  Specify which tags you wish to exclusively run.
                        Supported options are 'shell', 'editor', 'mux', 'osx',
                        and 'dotfile'
```

use it to symlink your dotfiles:

![devenv --tags dotfiles demo](https://raw.githubusercontent.com/evangoad/devenv/master/img/devenv--tags-dotfiles.gif)

use it to update all of your multiplexer configuration:

![devenv --tags mux demo](https://raw.githubusercontent.com/evangoad/devenv/master/img/devenv--tags-mux.gif)

# How it Works

`devenv` is a simple python script that runs a single
[playbook](https://github.com/evangoad/devenv/blob/master/development.yml) on
[localhost](https://github.com/evangoad/devenv/blob/master/inventory).  This
playbook imports the four [roles](roles/): [editor](roles/editor),
[shell](roles/shell), [mux](roles/mux), and [osx](roles/osx).  Move your
existing dotfiles into the "files" directory for the appropriate role.
`.vimrc` goes in the [editor's files directory](roles/editor/files).
`tmux.conf` goes in the [mux's files directory](roles/mux/files).
`.gitconfig`, `.zshrc`, and `.profile` go in the [shell's files
directory](roles/shell/files). Each of the four [roles](roles/) knows how to
install and update the programs listed above, and keep up to date personal
dotfile configurations.  All you have to do is run `devenv` if you want to
download your last pushed configuration and update your machine.  This is very
usefull when booting into an new virtual machine for the firs time.

# What you get out of the box

- Travis-ci configuration to automate your tests for both OSX and Ubuntu.
- Single command install & update of your shell, editor,
  multiplexer, and dotfiles.
- Simple github pages website using the caymen theme for jekyll.
- Easy to customize and expand by writing ansible.

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

