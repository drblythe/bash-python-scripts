#!/bin/bash
find . -name "*.mkv" -exec mkvpropedit {} --edit track:a1 --set flag-default=0 --edit track:a2 --set flag-default=1 --edit track:s1 --set flag-default=0 --edit track:s2 --set flag-default=1 \;
