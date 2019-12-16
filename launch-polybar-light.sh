#!/bin/bash

pid="$(pidof polybar)"
pkill polybar
wait
echo killed
polybar status-light &
echo 1
polybar task &
echo 2
