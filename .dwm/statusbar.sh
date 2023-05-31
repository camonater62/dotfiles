#!/bin/bash

if [[ `pgrep -f $0` != "$$" ]]; then
    exit
fi

while true
do
    STATUS=""
    for script in ~/.dwm/statusbar.d/*.sh
    do
        OUT=$(bash $script 2>/dev/null)
        if [ ! -z "$OUT" ]
        then
            STATUS="$STATUS | $OUT"
        fi
    done

    # echo ${STATUS:2}
    xsetroot -name "${STATUS:2} "

    sleep 1
done
