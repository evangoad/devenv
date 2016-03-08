# Forking Instructions

If you are unfamiliar with forking, then [have a look at Github'bs "Fork a Repo" documentation first](https://help.github.com/articles/fork-a-repo/).

## Fork button

Click this button to fork the devenv repo.

<!-- Place this tag where you want the button to render. -->
<a class="github-button" href="https://github.com/evangoad/devenv/fork"
data-icon="octicon-repo-forked" data-style="mega"
data-count-href="/evangoad/devenv/network"
data-count-api="/repos/evangoad/devenv#forks_count" data-count-aria-label="#
forks on GitHub" aria-label="Fork evangoad/devenv on GitHub">Fork</a>

<!-- Place this tag right after the last button or just before your close body
tag. -->
<script async defer id="github-bjs"
src="https://buttons.github.io/buttons.js"></script>

# Edit [README.md](README.md), and [FORKING.md](FORKING.md)

Look for every instance of `evangoad` in those two files and replace them with
`your_github_username`.  Then the rest of the installation steps in the
[README](README.md) should point to your copy of `denenv`.

# Move your Dotfiles

If you have an existing `.vimrc`, `.tmux.conf`, `.zshrc`, `.hgrc`, `.gitconfig`,
then you should move them into the [dotfile role
directory](playbooks/roles/dotfiles/files), named without the `.` character
(this is so ansible and vim can detect these files a bit easier).

# Install your customized copy of `devenv`!

Follow the rest of the installation steps in your copy of the
[README](README.md).

