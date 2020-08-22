#!/bin/bash

# Enable Natural Scrolling
xinput set-prop "TPPS/2 IBM TrackPoint" "336" 1

# Enable Acceleration
xinput set-prop "TPPS/2 IBM TrackPoint" "350" 0, 1

# Increase Accel Speed
xinput set-prop "TPPS/2 IBM TrackPoint" "347" 1.0

# Disable TouchPad
toggle_touchpad.sh
