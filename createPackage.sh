#! /bin/bash

OUTPUT_FOLDER=unix_config

# Make folders 
mkdir -p ./$OUTPUT_FOLDER/vim/.vim
mkdir -p ./$OUTPUT_FOLDER/tmux/.vim

# Copy vim configuration and dependencies
cp -Rp ~/.vim ./$OUTPUT_FOLDER/vim/.vim/
cp -a ~/.vimrc ./$OUTPUT_FOLDER/vim/.vimrc

# Copy tmux configuration
cp -a ~/.tmux.conf ./$OUTPUT_FOLDER/tmux/.tmux.conf

# Copy install script
cp ./install.sh ./$OUTPUT_FOLDER/

# Copy package install script
cp ./packages.sh ./$OUTPUT_FOLDER/

# zip folder and remove tmp
zip -r $OUTPUT_FOLDER.zip $OUTPUT_FOLDER
rm -rf ./$OUTPUT_FOLDER
