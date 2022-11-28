#!/bin/bash


rm -f ~/.vimrc
mkdir -p ~/.vimrc_bups

BUPS=~/.vimrc_bups/.bup_vimrc

if [ -f "$BUPS" ]; then
	cp ~/.vimrc_bups/.bup_vimrc ~/.vimrc 
fi

rm -rf ~/.vimrc_bups

sed -i "s/source\ \~\/\.dotfiles\/etc\/bashrc\_custom//g" ~/.bashrc

rm -rf ~/.TRASH
