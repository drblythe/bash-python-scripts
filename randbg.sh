#!/bin/bash

res="$(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/')"
gruvbg="282828"
gruvfg="ebdbb2"
swirlamt=$(( ( RANDOM % 360 ) + 0 ))

if [ "$1" = "--help" ]; then
	echo Options:
	echo -l: light
	echo -d: dark
	echo -g: gruv
	exit
fi

if [ "$1" = "-l" ]; then
	inner="$(openssl rand -hex 3)";
	outer="$gruvfg"
elif [ "$1" = "-g" ]; then
	inner="$gruvfg"
	outer="$gruvbg";
elif [ "$1" = "-d" ]; then
	inner="$(openssl rand -hex 3)";
	outer="$gruvbg";
elif [ "$1" = "-s" ]; then
	color="$(openssl rand -hex 3)";
	magick -size 50x50 xc:"#$color" /tmp/saladcolor.png
	feh --bg-tile /tmp/saladcolor.png
	exit;
else
	inner="$(openssl rand -hex 3)";
	outer="$(openssl rand -hex 3)";
fi

magick -size "$res" radial-gradient:"#$inner"-"#$outer" /tmp/papepapepape.png
magick /tmp/papepapepape.png -swirl "$swirlamt"  /tmp/papepapepape.png
feh --bg-tile /tmp/papepapepape.png
