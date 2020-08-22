#!/bin/bash

# Trackpoint for laptop
#xinput set-button-map $(xinput | grep -i trackpoint | cut -d'=' -f2 | cut -d'[' -f1)  1 2 3 5 4 6 7 &
#xinput set-button-map $(xinput | grep -i touchpad | cut -d'=' -f2 | cut -d'[' -f1)  1 2 3 5 4 6 7 &
# Mouse for desktop
#xinput set-button-map $(xinput | grep -i mouse | head -n 1 | cut -d'=' -f2 | cut -d'[' -f1)  1 2 3 5 4 6 7 &
#xinput set-button-map 13  1 2 3 5 4 6 7 &
#xinput set-button-map 12  1 2 3 5 4 6 7 &

xinput set-prop "TPPS/2 IBM TrackPoint" "336" 1
