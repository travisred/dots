#! /bin/bash

filename=`date +%Y%m%d%I%M%S`;
filename+='_';
filename+=`openssl rand -hex 16`;
filename+='.png';
host="magnatecha.com";

screencapture -i $filename;
open $filename; #edit?
read go;

rsync $filename $host:~/public_html/_media/;
echo "http://$host/_media/$filename" | pbcopy;

mv $filename ~/sites/_media/;
osascript -e 'display notification "The image has been uploaded to your server." with title "Image Uploaded"';
