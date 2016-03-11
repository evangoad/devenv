#!/usr/bin/env bash
#
# script to install dotfile

# Install Python
if [[ `uname` == 'Linux' ]]; then
  sudo apt-get -qq update
  sudo apt-get install -y python
  sudo pip install --upgrade pip
else
  brew update > /dev/null 
  brew install python > /dev/null
fi

# Clone devenv from Github
if [ -d "$HOME/.devenv" ]; then
  echo "devenv github repo already cloned."
else
  git clone https://github.com/evangoad/devenv ~/.devenv
fi

# Install pip helper
if type devenv > /dev/null; then
  echo "devenv python script already installed."
else
  sudo pip install git+git://github.com/evangoad/devenv
fi

