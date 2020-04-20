#! /bin/bash

filename=`date +%Y%m%d%I%M%S`;
filename+='_';
filename+=`openssl rand -hex 16`;
filename+='.png';
host="appy.continued.com";
domain="screens.continued.com/travis";

screencapture -i $filename;
printf "\nHit enter when you are done editing image in Preview. Don't forget to save it first (cmd+s).\n";
open $filename; #edit?
read go;

rsync $filename $host:/var/www/screens/travis/;
echo "http://$domain/$filename" | pbcopy;

mv $filename ~/Documents/work/screenshots/;
osascript -e 'display notification "The image has been uploaded to your server." with title "Image Uploaded"';
