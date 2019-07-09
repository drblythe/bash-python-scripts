#!/bin/bash
bg="#242424"
fg="#ffffff"
book=$(ls -R ~/doc/books | grep '.pdf\|.djvu' | dmenu -i -l 10 -nb $bg -nf $fg -sb $fg -sf $bg -fn "SF UI Display Medium-8");
if [ "$book" ]; then
	zathura ~/doc/books/"$book";
fi
