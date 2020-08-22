#!/bin/bash
#xinput disable "$(xinput | grep -i touchpad | cut -d'=' -f2 | cut -d'[' -f1)"



declare -i ID
ID=$( xinput list | \egrep -iEo 'touchpad\s*id\=[0-9]{1,2}' | \egrep -Eo '[0-9]{1,2}' )
echo "Device ID: $ID"
declare -i STATE
STATE=$( xinput list-props $ID | \grep 'Device Enabled' | \awk '{print $4}' )

echo "State: $STATE"
if [ $STATE -eq 1 ]
then
    xinput disable $ID
    echo "Touchpad disabled."
else
    xinput enable $ID
    echo "Touchpad enabled."
fi
