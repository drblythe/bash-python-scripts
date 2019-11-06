#!/bin/bash

if [ -z "$1" ]; then
	echo "USAGE: $0 <image-file>";
	exit;
elif [ "$1" = "-r" ]; then
	feh --bg-fill ~/.pape;
	exit;
fi

cp "$1" ~/.pape
feh --bg-fill ~/.pape
