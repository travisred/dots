#! /bin/bash

cd photos;

for folder in `ls`; do
	if [ ! -d ~/photos_small/$folder ]; then
		mkdir ~/photos_small/$folder;
	fi
	cd $folder;
	myfiles=(*)
	printf "\nscaling images in $folder\n";
	for photo in "${myfiles[@]}"; do
		if [ ! -f ~/photos_small/$folder/"$photo" ]; then
			convert -resize 800x800\> "$photo" ~/photos_small/$folder/"$photo"
			printf '.'
		fi
	done
	cd ../;
done

