#!/bin/bash
echo "$(date +"%a, %b %d  %I:%M %P")" | awk '{print tolower($0)}'
