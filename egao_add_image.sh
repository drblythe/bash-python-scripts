#!/bin/bash
#
# $1 - name of file to edit
# $@ - all the filenames to be added to the html file (can use *, filenames should be something like 0001.jpg, etc)

for i in $@; do
	if [ "$1" != "$i" ]; then
		#echo "$i ---> $1"
		sed -i '/end-images/i \\t\t\t'"<tr><td><a target=\"_blank\" rel=\"noopener noreferrer\" href='./images/"$i"'><img src='./images/"$i"'></a></td></tr>"'' $1
	fi
done


