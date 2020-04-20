#! /bin/bash

song=`find ~/Music | grep mp3 | perl -MList::Util=shuffle -wne 'print shuffle <>;' > .random.txt`;

mpg123 -C --list .random.txt;

exit;
