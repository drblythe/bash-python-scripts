#!/bin/bash

# Check argv
if [ $# -lt 1 ]; then
	echo "Usage: ${0} <time-in-seconds>";
	return;
fi

# Set/start timer
timer=$1
echo "Timer set for ${1} seconds"
sleep $1

# Current time
currentTime=$(date +"%T")

# Notify
notify-send "Timer is up"
echo "Timer is up"
