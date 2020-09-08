#!/usr/bin/bash

#check if file is provided
if [ $# != 1 ]
then
	echo "Usage: $0 <textfile>"
else
	echo "" > decrypt.tmp

#char to sub
echo -n "Enter alphabet to substitute:"
read alpha1

#char to sub to
echo -n "Enter alphabet to substitute to:"
read alpha2

#convert to upper
cipher1=$(echo $alpha1 | tr [:lower:] [:upper:])
cipher2=$(echo $alpha2 | tr [:lower:] [:upper:])
echo $cipher1 "will be substituted with" $cipher2

#substitution process
d=$(cat $1 | tr [$cipher1] [$cipher2])
#echo $d

# write to tmp file then move to real file
echo "$d" > decrypt.tmp && mv decrypt.tmp decrypt.txt
fi
