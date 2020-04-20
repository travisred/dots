#! /bin/bash

entries=( *mp3 )
for mp3 in "${entries[@]}"; do
  python ~/dots/scripts/id3artwork.py "$mp3" albumart.jpg
done
