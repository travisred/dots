#! /bin/bash

sudo su
apt-get install deborphan -y
apt-get autoremove --purge libx11-.* lxde-.* raspberrypi-artwork xkb-data omxplayer penguinspuzzle sgml-base xml-core alsa-.* cifs-.* samba-.* fonts-.* desktop-* gnome-.* -y
apt-get autoremove --purge $(deborphan)
apt-get autoremove --purge
apt-get autoclean

apt-get install vim git tmux python-pip -y

pip install sh
pip install requests

dpkg-reconfigure tzdata

#scp .ssh ip

git clone git@github.com:travisred/dots.git

rm .bash_aliases
rm .vimrc 
rm .bashrc 
ln -s /home/treddell/dots/bash_aliases .bash_aliases
ln -s /home/treddell/dots/vimrc .vimrc
ln -s /home/treddell/dots/bashrc .bashrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

exit
