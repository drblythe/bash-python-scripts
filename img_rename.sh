#!/bin/bash

a=1
for i in *[jpg,png,gif]; do
	oldfull=$(basename -- "$i")
	oldbase="${oldfull%.*}"
	ext="${oldfull##*.}"
	newbase=$(printf "%04d" "$a") #04 pad to length of 4

	if [ "$ext" = "png" ]; then
		ext="jpg"
		convert "$oldfull" "$newbase.$ext"
		rm "$oldfull"
	else
		newfull="$newbase.$ext"
		mv -i -- "$oldfull" "$newfull"
	fi



	let a=a+1
done






























