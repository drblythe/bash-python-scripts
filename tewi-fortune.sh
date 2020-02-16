#!/bin/bash
#sleep 1;
urxvt --hold  -geometry 100x35 -e tewisay "$(fortune)" &
sleep .1;
active_node="$(bspc query -N -n .active)"
bspc node  $active_node -t floating
node="$(bspc query -N -n)"
bspc node $node -t floating
