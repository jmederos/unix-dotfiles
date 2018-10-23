#! /bin/bash

unalias cp

# vim
cp -rf ./vim/ ~/
# tmux
cp -rf ./tmux ~/

# la alias
echo "alias la='ls -hal'" >> ~/.bashrc

# packages
./packages.sh

echo "done"
