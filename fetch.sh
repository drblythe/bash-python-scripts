#!/bin/bash

distro="$(cat /etc/*-release | head -1 | cut -d ' ' -f1)"
model="$(cat /sys/devices/virtual/dmi/id/product_family)"
sh="$(echo $SHELL | cut -d '/' -f3)"
hostname="$(uname -n)"
user="$(echo $USER)"
cpu="$(uname -p | cut -d ' ' -f3)"

echo "OS: $distro"
echo "Model: $model"
echo "Shell: $sh"
echo "CPU: $cpu"
