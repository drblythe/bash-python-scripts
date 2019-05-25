#!/bin/bash
PLANK_ID=$(pidof plank)
if [ $PLANK_ID ]; then
	kill $PLANK_ID
else
	plank &
fi

