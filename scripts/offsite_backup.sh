#! /bin/bash

rsync -rbl --progress --size-only --delete /Volumes/treddell2/backup/ /Volumes/hitachi500/backup/;

rsync -rbl --progress --size-only --delete /Volumes/treddell2/gun_show/ /Volumes/hitachi500/gun_show/;
rsync -rbl --progress --size-only --delete /Volumes/treddell2/car_show/ /Volumes/hitachi500/car_show/;
rsync -rbl --progress --size-only --delete /Volumes/treddell2/gbgss/ /Volumes/hitachi500/gbgss/;

rsync -rbl --progress --size-only --delete /Volumes/treddell2/Videos/ /Volumes/hitachi500/Videos/;

exit
