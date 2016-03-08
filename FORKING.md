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

If you have an existing `.vimrc`, `.tmux.conf`, `.zshrc`, `.hgrc`, `.gitconfig`,
then you should move them into the [dotfile role
directory](playbooks/roles/dotfiles/files), named without the `.` character
(this is so ansible and vim can detect these files a bit easier).

## Install your customized copy of `devenv`!

Follow the rest of the installation steps in your copy of the
[README.md](README.md).

