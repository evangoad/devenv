[Home](../../README.md) > [Roles](./)

# Roles

These are ansible
[roles](http://docs.ansible.com/ansible/playbooks_roles.html#roles) that are
composed of anisble
[tasks](http://docs.ansible.com/ansible/playbooks_intro.html), which are yaml
files that define shell commands to be ran such as cloning github repositories
and symlinking dotfiles.  There are 5 roles currently available:

- [editor](./editor)
- [shell](./shell)
- [mux](./mux)
- [osx](./osx)

Each role contains a single task called `main.yml` that runs all of the commands
for that role. Feel free add to these roles, make your own roles, or only use
the roles you need.  Reference [ansible
documentation](http://docs.ansible.com/ansible/index.html) if you need a guide
in customizing these scripts.

