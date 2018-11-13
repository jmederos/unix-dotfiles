#! /bin/bash

INPUT_FOLDER=unix_dotfiles

# vim
echo "Copying vim dotfiles"
cp -af ./$INPUT_FOLDER/vim/.vim/ ~/
cp -f ./$INPUT_FOLDER/vim/.vimrc ~/

# tmux
echo "Copying tmux dotfile"
cp -f ./$INPUT_FOLDER/tmux/.tmux.conf ~/

# la alias
echo "Aliasing la"
echo "alias la='ls -hal'" >> ~/.bashrc

# packages
echo "Installing extra packages..."
./packages.sh

echo "done"
