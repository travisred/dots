#! /bin/bash
rsync \
	-rbl \
	--size-only \
	--progress \
	--delete \
	--delete-excluded \
	--backup-dir=~/old/ \
	--suffix=_`date +%Y_%m_%d_%H%M%S` \
	--exclude='Library' \
	--exclude='.*' \
	--exclude='*.iso*' \
	--exclude='VirtualBox*' \
	--exclude='ubuntu-ahm' \
    --bwlimit=200 \
~/ 192.168.2.2:~/backup/;
exit
