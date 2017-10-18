#! /bin/bash
rsync \
	-rbl \
	--size-only \
	--progress \
	--delete \
	--delete-excluded \
	--exclude='ubuntu-ahm' \
	--exclude='old' \
/Volumes/1tb/ /Volumes/treddell/;
exit
