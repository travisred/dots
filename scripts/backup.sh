#! /bin/bash
rsync \
	-rbl \
	--size-only \
	--progress \
	--delete \
	--delete-excluded \
	--backup-dir=/Volumes/treddell2/old/ \
	--suffix=_`date +%Y_%m_%d_%H%M%S` \
	--exclude='Library' \
	--exclude='.*' \
	--exclude='*.iso*' \
	--exclude='VirtualBox*' \
	--exclude='ubuntu-ahm' \
~/ /Volumes/treddell2/backup/;
exit
