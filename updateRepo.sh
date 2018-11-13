#! /bin/bash

OUTPUT_FOLDER=unix_dotfiles

# Make folders 
mkdir -p ./${OUTPUT_FOLDER}/vim/
mkdir -p ./${OUTPUT_FOLDER}/tmux/

# Copy vim configuration and dependencies
cp -Rp ~/.vim ./${OUTPUT_FOLDER}/vim/.vim
cp -a ~/.vimrc ./${OUTPUT_FOLDER}/vim/

# Copy tmux configuration
cp -a ~/.tmux.conf ./${OUTPUT_FOLDER}/tmux/

# Copy dotfile install script and amend
cp ./install.sh ./${OUTPUT_FOLDER}/
sed -i '' -e "s/${OUTPUT_FOLDER}/\./" ./${OUTPUT_FOLDER}/install.sh

# Copy package install script
cp ./packages.sh ./${OUTPUT_FOLDER}/

# zip folder
./createZip.sh ${OUTPUT_FOLDER}

# remove install scripts from output folder
rm -f ./{$OUTPUT_FOLDER}/*.sh
