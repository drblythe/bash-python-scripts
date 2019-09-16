#!/bin/bash
#
# $1 - name of file to edit
# $@ - all the filenames to be added to the html file (can use *, filenames should be something like 0001.jpg, etc)

# do a find for all *.html???

# 1. Create a new file base on template.html, change the 2 lines as necessary
# 2. Edit index.html to add a new line to tabel
# 3. Edit ALL indexDir/directory/*html, same as index
#


for i in $@; do
	if [ "$1" != "$i" ]; then
		#echo "$i ---> $1"
		sed -i '/sidebar-table/i \\t\t\t'"<tr><td><a href='./images/"$1"'>image'$imagename'</a></td></tr>"'' $2
	fi
done


