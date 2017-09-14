# Playbooks

This directory contains three different entities common to ansible: inventory,
playbooks, and roles.

## Inventory

Inventories in ansible are the hosts (computers) that you want to run ansible
commands on.  In the case of `devenv`, the only computer we ever want to run
commands on is `localhost` or `127.0.0.1`.  Therefore, the single
[inventory](./inventory) file in this directory shouldn't change unless you are
modifying `devenv` to run updates across multiple hosts you own.

## Playbooks

There are two main playbooks in this directory: [osx.yml](./osx.yml) and
[ubuntu.yml](./ubuntu.yml).  When you run `devenv` from the command line, the
python script figures out which operating system you are running, and runs the
playbook for the supported operating system.  Below is an example for osx.

```
ansible-playbook -i ~/.devenv/playbooks/inventory ~/.devenv/playbooks/osx.yml
```

These two playbook files connect your roles to your localhost inventory.
It's a good idea to keep all of your tasks in ansible grouped into roles,
especially if you need to [share them across playbooks](./roles/common).

## Roles

See more at the main [Roles Readme](./roles).

