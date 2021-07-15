#!/bin/bash

if [ $theme == "light" ]; then
	export theme="dark"
else
	export theme="light"
fi

pkill polybar
~/.scripts/st_change_theme.sh $theme
~/.config/bspwmrc
