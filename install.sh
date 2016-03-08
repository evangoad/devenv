#!/usr/bin/env bash
#
# script to install dotfile

# Clone devie from Github
if [ -d "$HOME/.devie" ]; then
  echo "devenv github repo already cloned."
else
  git clone https://github.com/evangoad/devie ~/.devie
fi

# Install Python
if [[ `uname` == 'Linux' ]]; then
  sudo apt-get update
  sudo apt-get install python
  pip install --upgrade pip
else
  brew update
  brew install python
fi

# Install pip helper
if type devenv > /dev/null; then
  echo "devenv python script already installed."
else
  pip install git+git://github.com/evangoad/devie
fi

