#! /bin/bash
string=`/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | grep treddell`
if [[ $string != *"treddell"* ]]; then
	exit
fi
folder=`date +%Y%m%d`
subfolder=`date +%Y%m%d_%H%M`
source='/Users/treddell/'
target='server:/media/backup/'

rsync \
	-rbl \
	--progress \
	--size-only \
	--stats \
	--delete \
    --force \
	--delete-excluded \
	--backup-dir="/media/backup/$folder/$subfolder" \
	--exclude='Library' \
	--include='~/Library/Mail' \
	--exclude='.*' \
	--exclude='*.iso' \
	--exclude='VirtualBox*' \
	--exclude='ubuntu-ahm' \
	--exclude='~/continued/volumes/' \
$source $target

exit
