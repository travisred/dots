#! /bin/bash

mv ~/.bash_aliases ~/.bash_aliases.orig
mv ~/.vimrc ~/.vimrc.orig
mv ~/.bashrc ~/.bashrc.orig
mv ~/.tmux.conf ~/.bashrc.conf.orig

ln -s ~/dots/bash_aliases ~/.bash_aliases
ln -s ~/dots/vimrc ~/.vimrc
ln -s ~/dots/bashrc ~/.bashrc
ln -s ~/dots/tmux.conf ~/.tmux.conf
