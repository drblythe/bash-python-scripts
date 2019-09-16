#!/bin/bash
#
# $1 will be the file to remove images from

sed -i '/<tr><td><a target=/d' "$1"
