# Forking Instructions

If you are unfamiliar with forking, then [have a look at Github's "Fork a Repo" documentation first](https://help.github.com/articles/fork-a-repo/).

## Fork button

Fork this repo by clicking the "Fork" button in the upper right hand corner of
this github page.

## Edit files with github user info

- [install.sh](install.sh)
- [.travis.yml](.travis.yml)
- [README.md](README.md)
- [FORKING.md](FORKING.md)

Look for every instance of `evangoad` in the files listed above and replace them with
`your_github_username`.  Then the rest of the installation steps in the
[README](README.md) should point to your copy of `denenv`.

## Move your Dotfiles

If you have an existing `.vimrc`, `.tmux.conf`, `.zshrc`, `.profile`, and `.gitconfig`,
then you should move them into the appropriate directories:
- `.vimrc` goes in the [editor's files directory](roles/editor/files).
- `tmux.conf` goes in the [mux's files directory](roles/mux/files).
- `.gitconfig`, `.zshrc`, and `.profile` go in the [shell's files
directory](roles/shell/files). 


## Install your customized copy of `devenv`!

Follow the rest of the installation steps in your copy of the
[README.md](README.md).

