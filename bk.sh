#!/bin/bash
#bg="#242424"
#fg="#ffffff"
bg="#282828"
fg="#ebdbb2"
#book=$(ls -R ~/Documents/books | grep '.pdf\|.djvu' | dmenu -i -l 10 -nb $bg -nf $fg -sb $fg -sf $bg -fn "SF UI Display Medium-8");
book=$(ls -R ~/Documents/books | grep '.pdf\|.djvu' | dmenu -i -l 10 -h 30 -nb "#efeff0" -nf "#464d53" -sb "#8a8f93" -sf "#00ffff" -fn "IBM Plex Mono Medium-8")
if [ "$book" ]; then
	zathura ~/Documents/books/"$book";
fi
