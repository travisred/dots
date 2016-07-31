#! /bin/bash

mv .bash_aliases .bash_aliases.orig
mv .vimrc .vimrc.orig 
mv .bashrc .bashrc.orig

ln -s /home/treddell/dots/bash_aliases .bash_aliases
ln -s /home/treddell/dots/vimrc .vimrc
ln -s /home/treddell/dots/bashrc .bashrc	
