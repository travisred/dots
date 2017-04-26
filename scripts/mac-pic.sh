#! /bin/bash 

d=`date +%Y%m%d%I%M%S`
host="magnatecha.com"
screencapture -i $d.png; 
open $d.png #edit?
read go;
rsync $d.png $host:~/public_html/_media/; echo "http://$host/_media/$d.png" | pbcopy
mv $d.png ~/sites/_media/
