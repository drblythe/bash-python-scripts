#!/bin/bash
polybar status &
#polybar taskbar &
setxkbmap -option caps:swapescape &
tint2 &
xfce4-power-manager &
sleep .5
~/.scripts/reverse_trackpoint.sh &
~/.scripts/trackpoint_accel.sh &
xdo lower -N "Polybar" &
xdo lower -N "Polybar" &
xrdb ~/.Xresources_black &
redshift -x &
redshift -PO 5700 &
#sleep 2.5
#~/.scripts/tewi-fortune.sh &
#~/.scripts/cow-fortune.sh &
#~/.scripts/marimo-fortune.sh &
#~/.scripts/owo-fortune.sh && sleep 20
