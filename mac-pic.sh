#! /bin/bash 

d=`date +%Y%m%d%I%M%S`
host="a.magnatecha.com"
screencapture -i $d.png; 
open $d.png #edit?
read go;
rsync $d.png $host:~/sites/$host/; echo "http://$host/$d.png" | pbcopy
mv $d.png ~/Downloads
