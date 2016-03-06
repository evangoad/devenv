#!/usr/bin/env bash
#
# script to install dotfile

# Clone from Github
if [ -d "$HOME/.devie" ]; then
  echo "dotfile github repo already cloned."
else
  git clone git@github.com:evangoad/devie ~/.devie
fi

# Install pip helper
if  type devie > /dev/null; then
  echo "dotfile python script already installed."
else
  pip install git+git://github.com/evangoad/devie
fi

