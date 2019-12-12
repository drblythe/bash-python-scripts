#!/bin/bash
maxbrightness="$(brightnessctl max)"
currentbrightness="$(brightnessctl get)"
result=$(echo "scale=5; $currentbrightness/$maxbrightness*100" | bc -l | cut -d '.' -f1)
echo $result
