#!/bin/bash

LOCATION="$HOME/Pictures/ScreenShots"
NAME='%Y%m%d-%H%M%S.png'
scrot -s -f -F "$LOCATION/$NAME" -e 'optipng -silent $f'
