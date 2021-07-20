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
    programs="vim git keepassx dmenu getmail4 mutt ffmpeg fzf"
    echo "installing $programs"
    sudo apt install $programs
fi

mv ~/.bash_aliases ~/.bash_aliases.orig
mv ~/.vimrc ~/.vimrc.orig
mv ~/.bashrc ~/.bashrc.orig
mv ~/.tmux.conf ~/.bashrc.conf.orig

ln -s ~/dots/bash_aliases ~/.bash_aliases
ln -s ~/dots/vimrc ~/.vimrc
ln -s ~/dots/bashrc ~/.bashrc
ln -s ~/dots/tmux.conf ~/.tmux.conf
ln -s ~/dots/muttrc ~/.muttrc
ln -s ~/dots/mutt_personal ~/.mutt_personal
ln -s ~/dots/mutt_work ~/.mutt_work
ln -s ~/Documents/email/ahm ~/ahm
ln -s ~/Documents/getmail ~/.getmail

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/dots/colors .vim/

# link binaries

sudo ln -s /home/treddell/dots/bin/clipmenu/clipmenud /usr/local/bin/
sudo ln -s /home/treddell/dots/bin/clipmenu/clipmenu /usr/local/bin/
sudo ln -s /home/treddell/dots/bin/clipmenu/clipdel /usr/local/bin/
sudo ln -s /home/treddell/dots/bin/clipmenu/clipfsck /usr/local/bin/
sudo ln -s /home/treddell/dots/bin/clipnotify/clipnotify /usr/local/bin/

git config --global user.email "tjreddell@gmail.com"
git config --global user.name "Travis Reddell"
git config --global core.editor "vim"

# potential fixes for clipmenu
# 2007  sudo apt install make
# 2009  sudo apt install gcc
# 2012  sudo apt install apt-file
# 2017  sudo apt install x11proto-dev
# 2020  sudo apt install libx11-dev
# 2023  sudo apt install libxfixes-dev


exit
