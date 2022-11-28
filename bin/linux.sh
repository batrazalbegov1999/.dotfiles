#!/bin/bash

VAR=$(uname)

if [[ "$VAR" != *"Linux"* ]]; then
    echo "ERROR --> Incorrect OS detected for this target!" >> linuexsetup.log
    exit
fi

mkdir -p ~/.TRASH 

OLDVIMRC=~/.vimrc
if [ -f "$OLDVIMRC" ]; then
    echo "LOG --> Found existing .vimrc file! Saving backup!" >> linuxsetup.log
    mkdir -p ~/.vimrc_bups
    cp ~/.vimrc ~/.vimrc_bups/.bup_vimrc
    # Delete old .vimrc
    rm ~/.vimrc
fi

cat etc/vimrc > ~/.vimrc

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc



