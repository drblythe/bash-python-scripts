#!/bin/bash

#!/bin/bash
xcape -e 'Super_L=Alt_L|F1'
setxkbmap -option caps:swapescape 
xrdb ~/.Xresources_almostDefault &
redshift -x && redshift -PO 5700 &
sleep 1.5
~/.scripts/tewi-fortune.sh &
