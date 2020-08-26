#!/bin/bash

device=$1

if [ "$#" -lt 1 ]; then
	echo "Usage: mt.sh </dev/<device>"
else
	udisksctl mount --block-device "/dev/$device"
fi
