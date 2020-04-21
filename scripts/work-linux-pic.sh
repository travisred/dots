#! /bin/bash

filename=`date +%Y%m%d%I%M%S`;
filename+='_';
filename+=`openssl rand -hex 16`;
filename+='.png';
host="appy.continued.com";
domain="screens.continued.com/travis";

scrot -s $filename;
#printf "\nHit enter when you are done editing image in Preview. Don't forget to save it first (cmd+s).\n";
#open $filename; #edit?
#read go;

rsync $filename $host:/var/www/screens/travis/;
echo "http://$domain/$filename" | xclip -selection c;

mv $filename ~/Documents/work/screenshots/;
notify-send 'The image has been uploaded to your server.';
