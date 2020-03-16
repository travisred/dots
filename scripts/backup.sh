#! /bin/bash
folder=`date +%Y%m%d`
subfolder=`date +%Y%m%d_%H%M`
source='/Users/treddell/'
targetVolume='/Volumes/treddell2'
# targetVolume='/Volumes/hitachi500'
target="$targetVolume/backup/"
backupDirectory="$targetVolume/old/$folder/$subfolder"

rsync \
	-rbl \
	--size-only \
	--progress \
	--delete \
	--delete-excluded \
	--backup-dir=$backupDirectory \
	--exclude='Library' \
	--include='~/Library/Mail' \
	--exclude='.*' \
	--exclude='VirtualBox*' \
	--exclude='ubuntu-ahm' \
	--exclude='~/continued/volumes/' \
$source $target;

exit
