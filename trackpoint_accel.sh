#!/bin/bash

id="$(xinput | grep -i trackpoint | cut -d'=' -f2 | cut -d'[' -f1)"
xinput --set-prop $id 'libinput Accel Profile Enabled' 0, 1 
