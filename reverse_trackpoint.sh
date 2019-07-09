#!/bin/bash

xinput set-button-map $(xinput | grep -i trackpoint | cut -d'=' -f2 | cut -d'[' -f1)  1 2 3 5 4 6 7
