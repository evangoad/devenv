# Roles

These are ansible
[roles](http://docs.ansible.com/ansible/playbooks_roles.html#roles) that are
composed of anisble
[tasks](http://docs.ansible.com/ansible/playbooks_intro.html), which are yaml
files that define shell commands to be ran such as cloning github repositories
and symlinking dotfiles.  There are 5 roles currently available to be included
in playbooks: 

- [common](./common)
- [dotfiles](./dotfiles)
- [osx](./osx)
- [ubuntu](./ubuntu)
- [vagrant](./vagrant)

Each role contains a single task called `main.yml` that runs all of the commands
for that role.  Roles in devenv may optionally have a `files` directory may
contain [helper scripts](./common/files/username), [your
dotfiles](./dotfiles/files), or [copies of vagrantfiles](./roles/vagrant/files).
Feel free add to these roles, make your own roles, or only use the roles you
need.  Reference [ansible
documentation](http://docs.ansible.com/ansible/index.html) if you need a guide
in customizing these scripts.


## Tree

```bash
tree .
.
├── README.md
├── common
│   ├── files
│   │   └── username
│   └── tasks
│       └── main.yml
├── dotfiles
│   ├── files
│   │   ├── gitconfig
│   │   ├── hgrc
│   │   ├── profile
│   │   ├── tmux.conf
│   │   ├── vimrc
│   │   └── zshrc
│   └── tasks
│       └── main.yml
├── osx
│   └── tasks
│       └── main.yml
├── ubuntu
│   └── tasks
│       └── main.yml
└── vagrant
    ├── files
        └── ubuntu_vagrantfile
    └── tasks
        └── main.yml

13 directories, 14 files
```
