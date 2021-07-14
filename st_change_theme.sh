#!/bin/bash

if [ $# -lt 1 ]; then
	echo "No theme name given"
else

	cd $HOME/.local/bin/st-0.8.4/
	
	if [ $1 == "light" ]; then
		sed -i 's/_DARK/_LIGHT/g' $HOME/.local/bin/st-0.8.4/config.h
	elif [ $1 == "dark" ]; then
		sed -i 's/_LIGHT/_DARK/g' $HOME/.local/bin/st-0.8.4/config.h
	fi
	
	make

fi
