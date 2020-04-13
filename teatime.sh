#!/bin/bash
echo "Timer set for 3 minutes"
for i in $(seq 6 $END); do
	sleep 30
	echo "$(( 180 - $(( $i * 30 )) )) seconds left"
done
figlet "TEA TIME"
