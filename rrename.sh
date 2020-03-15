#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Requires at least one file to rename"
else
	# Ask for prefix
	echo "Prefix(Enter for none) :"
	read -r prefix
	if [ ! -z "$prefix" ]; then
		prefix="${prefix}_"
	fi
	for fullfile in $@; do
		# Separate filename and extension
		filename=$(basename -- "$fullfile")
		extension="${filename##*.}"
		filename="${filename%.*}"
		
		# Random alnum string
		NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
		
		# Rename the file
		newFilename="${prefix}${NEW_UUID}.${extension}"
		mv -v $fullfile $newFilename
	done
fi
