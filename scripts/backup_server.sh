#! /bin/bash
source='/media/media/'
targetVolume='/media/backup2/'
target="$targetVolume/media/"

rsync \
    -r \
	--size-only \
	--progress \
	--delete \
	--delete-excluded \
$source $target;

exit
