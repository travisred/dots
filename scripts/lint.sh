#! /bin/bash
echo "Checking for PHP syntax errors...";
d=`find -L Model -name "*.php" -print0 | xargs -0 -n 1 -P 4 php -l | grep -v "No syntax errors"`;
if [ -z "$d" ]; then 
	while true; do printf '\a'; sleep 1; done 
fi
d=`find -L View -name "*.php" -print0 | xargs -0 -n 1 -P 4 php -l | grep -v "No syntax errors"`;
if [ -z "$d" ]; then 
	while true; do printf '\a'; sleep 1; done 
fi
d=`find -L Controller -name "*.php" -print0 | xargs -0 -n 1 -P 4 php -l | grep -v "No syntax errors"`;
if [ -z "$d" ]; then 
	while true; do printf '\a'; sleep 1; done 
fi
d=`find -L Lib -name "*.php" -print0 | xargs -0 -n 1 -P 4 php -l | grep -v "No syntax errors"`;
if [ -z "$d" ]; then 
	while true; do printf '\a'; sleep 1; done 
fi
echo "Checking for debug droppings...";
git diff | grep "debug";
#find -L Plugin -name "*.php" -print0 | xargs -0 -n 1 -P 4 php -l | grep -v "No syntax errors";
