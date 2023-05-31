#!/bin/bash

OUTPUT="$(amixer sget Master | grep 'Right:')"
# example output: "  Front Right: Playback 19629 [30%] [off]"


# detect if the output is not muted (not set to off)
if [[ $OUTPUT == *"off"* ]]; then
    : # do nothing
else
    # get the volume level and remove all text
    VOL="$(echo $OUTPUT | sed 's/.*\[\([0-9]*%\)\].*/\1/')"
    echo "$VOL V"
fi
