#!/bin/bash
device_list=($(xrandr | grep " connected " | cut -d ' ' -f1))
num_devices=${#device_list[@]}
if [ $num_devices -gt 1 ]
then
	# Multiple displays -- turn off laptop
	xrandr --output eDP-1 --off
fi

#for var in ${device_list[@]}
#do
#	echo ${var}
#done
