#!/bin/bash

# Check if xdo is installed
xdo_path=$(which xdo)
if [ $? -ne 0 ]; then
    echo "Cannot find \`xdo\` command." 1>&2
    exit 1
fi

# Obtain bar's window id
id="$(xdo id -N "Polybar")"
#echo "$id"

# Toggle bar visibility
status="$(cat $HOME/.polybar_status)"

if [ "$status" = "active" ] ; then
	echo "inactive" > $HOME/.polybar_status
    xdo hide -N "Polybar"
else
	echo "active" > $HOME/.polybar_status
    xdo show -N "Polybar"
fi

