#!/usr/bin/env bash
#
# script to install devenv

# Install Python
if [[ `uname` == 'Linux' ]]; then
  echo "Linux prereqs"
  sudo apt-get -qq update
  sudo apt-get install -y python3 python3-setuptools
  sudo pip3 install --upgrade pip
  pip3 install ansible
else
  echo "OSX prereqs"
  brew update > /dev/null
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
  sudo -H pip3 install git+git://github.com/evangoad/devenv
fi

