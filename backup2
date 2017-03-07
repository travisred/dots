#! /bin/bash
rsync \
	-rbl \
	--size-only \
	--progress \
	--delete \
	--delete-excluded \
	--backup-dir=/Volumes/1tb/old/ \
	--suffix=_`date +%Y_%m_%d_%H%M%S` \
	--exclude='Library' \
	--exclude='.*' \
	--exclude='*.iso*' \
	--exclude='VirtualBox*' \
	--exclude='ubuntu-ahm' \
~/ /Volumes/1tb/backup/;
exit
