#! /bin/bash

unalias cp

# vim
cp -rf ./vim/ ~/
# tmux
cp -rf ./tmux ~/

# la alias
echo "la='ls -hal'" >> ~/.bashrc

# packages
./packages.sh

echo "done"
