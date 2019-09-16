#!/bin/bash

for i in "$@"; do
	fullname=$(basename -- "$i")
	filename="${fullname%.*}"
	extension="${fullname##*.}"
	if [ "$extension" = "png" ]; then
		convert "$i" "$filename.jpg";
	fi
done




























