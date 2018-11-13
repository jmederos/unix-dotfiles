#! /bin/bash

if [ "$(uname -s)" == "Linux" ] && [ "$(awk '{print $3}' <<< "$(lsb_release -i)")" == "Ubuntu" ]; then
    sudo apt-get install -y powerline tmux fish vim
fi
