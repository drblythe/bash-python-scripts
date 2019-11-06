#!/bin/bash
xinput disable "$(xinput | grep -i touchpad | cut -d'=' -f2 | cut -d'[' -f1)"
