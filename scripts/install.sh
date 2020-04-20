#! /bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ "$(uname)" == "Linux" ]
then
    echo "Installing vim, git, keepassx, dmenu"
    sudo apt install vim git keepassx dmenu
fi

mv ~/.bash_aliases ~/.bash_aliases.orig
mv ~/.vimrc ~/.vimrc.orig
mv ~/.bashrc ~/.bashrc.orig
mv ~/.tmux.conf ~/.bashrc.conf.orig

ln -s ~/dots/bash_aliases ~/.bash_aliases
ln -s ~/dots/vimrc ~/.vimrc
ln -s ~/dots/bashrc ~/.bashrc
ln -s ~/dots/tmux.conf ~/.tmux.conf
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/dots/colors .vim/
ln -s ~/dots/muttrc ~/.muttrc
ln -s ~/dots/mutt_personal ~/.mutt_personal
ln -s ~/dots/mutt_work ~/.mutt_work
ln -s ~/Documents/email/ahm ~/ahm
ln -s ~/Documents/getmail ~/.getmail

git config --global user.email "tjreddell@gmail.com"
git config --global user.name "Travis Reddell"
git config --global core.editor "vim"


exit
