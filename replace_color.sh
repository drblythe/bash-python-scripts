#!/bin/bash

INPUT_IMG=$1
NEW_CLR=$2
OLD_CLR=$3
OUTPUT_IMG=$4

convert "$INPUT_IMG" -fuzz 0% -fill \"$NEW_CLR\" -opaque \"$OLD_CLR\" "$OUTPUT_IMG"
