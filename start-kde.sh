#!/bin/bash
xrdb ~/.Xresources_solarized_builtin &
windscribe connect hops &
sleep 5
~/.scripts/tewi-fortune.sh &

#redshift -x && redshift -PO 5700 &
#setxkbmap -option caps:swapescape &
