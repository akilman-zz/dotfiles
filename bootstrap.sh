#!/bin/sh

################################################
## Bootstrap script for creating an environment
################################################

# clone dotfiles repo
git clone --recursive https://github.com/thetwan/dotfiles

# create aliases
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/emacs ~/.emacs.d
ln -s ~/dotfiles/emacs.el ~/.emacs
ln -s ~/dotfiles/bash/bashrc ~/.bashrc
