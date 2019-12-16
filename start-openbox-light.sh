#!/bin/bash
compton --config ~/.config/compton.conf --shadow-exclude-reg 1600x18+0+0 &
feh --bg-tile ~/Pictures/twm_4x4.png
#polybar status-light &
polybar twm-taskbar &
setxkbmap -option caps:swapescape &
xfce4-power-manager &
sleep .5
~/.scripts/reverse_trackpoint.sh &
~/.scripts/trackpoint_accel.sh &
xdo lower -N "Polybar" &
xdo lower -N "Polybar" &
xrdb ~/.Xresources_light &
redshift -x &
redshift -PO 5400 &
sleep 2.5
~/.scripts/tewi-fortune.sh &
