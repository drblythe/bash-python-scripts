#!/bin/bash

# Display
redshift -x &
redshift -PO 5600 &
feh --bg-fill ~/Pictures/nasa/nasa1.jpg &

# Tray
pasystray &
#nm-applet &

# Terminal
xrdb ~/.Xresources.black &
#xrdb ~/.Xresources.mariana &
#xrdb ~/.Xresources.gruv &

# Input
~/.scripts/reverse_trackpoint.sh &
~/.scripts/trackpoint_accel.sh &

# Other
#sleep 2.5
#~/.scripts/tewi-fortune.sh &
#~/.scripts/cow-fortune.sh &
#~/.scripts/marimo-fortune.sh &
#~/.scripts/owo-fortune.sh && sleep 20
