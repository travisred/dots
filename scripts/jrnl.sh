#!/bin/bash
type=$1
date=$2

if [[ "$type" == "" ]]
    then
        printf "Missing note type. Example usage:\njrnl.sh work\nParam 1: type\n";
        exit;
fi

if [[ "$date" == "" ]]
    then
        date=$(date +"%Y%m%d")
fi

vim ~/Dropbox/$type/$date
