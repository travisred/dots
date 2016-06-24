#! /bin/bash
cd ~/Documents/read
cat `ls | head -n1` | grep "Link: " | sed s/'Link: '//g | pbcopy; 
echo `ls | head -n1`
mv `ls | head -n1` ~/Documents/done/;
ls | wc -l
cd -
exit;
