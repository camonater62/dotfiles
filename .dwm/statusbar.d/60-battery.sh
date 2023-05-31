#!/bin/bash

# "acpi -b" Example output:
#   Battery 0: Decreasing 69%, 4:20:00 remaining
#   Battery 1: Unknown 0%, rate information unknown
ACPI=$(acpi -b)

IFS=$'\n'
BATS=($ACPI)
unset IFS

for BAT in "${BATS[@]}"; do

    VALUES=($BAT)
    # Values:
    # 0       1  2       3    4        5
    # Battery X: Status, %%%, XX:XX:XX remaining

    STATUS="${VALUES[2]}"

    if [[ $STATUS == F* ]]; then

        # Full, cheat lol
        printf "F 100%% B\n"
    
    elif [[ $STATUS != U* ]]; then

        # Not unknown
        # Charging / Decreasing

        PERCENT="${VALUES[3]}"
        TIME="${VALUES[4]}"

        IFS=$':'
        TIME=($TIME)
        unset IFS

        if [[ ${TIME[0]} != r* ]]; then

            HOURS=$(printf "${TIME[0]}\n" | bc -l)
            MINUTES=$(printf "${TIME[1]}\n" | bc -l)
            ROUNDED=$(printf "$HOURS + $MINUTES / 60\n" | bc -l)

            if [[ $HOURS == 0 ]]; then
                ROUNDED=$(printf "%dm" $MINUTES)
            else
                ROUNDED=$(printf "%.0fh" $ROUNDED)
            fi

            printf "%s %d%% %s B\n" ${STATUS:0:1} ${PERCENT:0:-2} $ROUNDED

        fi
    fi
done
