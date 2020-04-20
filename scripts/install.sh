#! /bin/bash

mv ~/.bash_aliases ~/.bash_aliases.orig
mv ~/.vimrc ~/.vimrc.orig
mv ~/.bashrc ~/.bashrc.orig
mv ~/.tmux.conf ~/.bashrc.conf.orig

ln -s ~/dots/bash_aliases ~/.bash_aliases
ln -s ~/dots/vimrc ~/.vimrc
ln -s ~/dots/bashrc ~/.bashrc
ln -s ~/dots/tmux.conf ~/.tmux.conf
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s /home/treddell/dots/colors .vim/
ln -s /home/treddell/dots/muttrc /home/treddell/.muttrc
ln -s /home/treddell/dots/mutt_personal /home/treddell/.mutt_personal
ln -s /home/treddell/dots/mutt_work /home/treddell/.mutt_work
ln -s /home/treddell/Documents/email/ahm /home/treddell/ahm
ln -s /home/treddell/Documents/getmail /home/treddell/.getmail

git config --global user.email "tjreddell@gmail.com"
git config --global user.name "Travis Reddell"
git config --global core.editor "vim"

exit
