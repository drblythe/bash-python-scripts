#!/bin/bash

TP_ID= $(xinput list | grep -i trackpoint | cut -d'=' -f2 | cut -d'[' -f1)
xinput set-button-map $TP_ID 1 2 3 5 4 6 7
