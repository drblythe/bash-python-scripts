#!/bin/bash

count=0
for file in "$@"; do
	let "count++"
	outfile="$(echo $file | cut -d '.' -f1)"
	echo [$count/$#] "$file" '-->' "$outfile".mp4
	#ffmpeg -i "$file" -codec copy "$outfile".mp4
	#ffmpeg -i ./"$file":-bsf:v h264_mp4toannexb  -codec copy "$outfile".avi
	ffmpeg -i "$file" -codec copy "$outfile".wmv
done
echo Done converting "$#" files
