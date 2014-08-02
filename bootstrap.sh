#!/bin/sh

################################################
## Bootstrap script for creating an environment
################################################

cd ~

if [ -e ~/dotfiles ]; then
    rm -rf ~/dotfiles
fi

# clone dotfiles repo
git clone --recursive https://github.com/akilman/dotfiles dotfiles

# create aliases
ln -f -s ~/dotfiles/vim ~/.vim
ln -f -s ~/dotfiles/vim/vimrc ~/.vimrc
