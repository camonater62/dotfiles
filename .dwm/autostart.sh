#!/bin/bash

# picom --vsync --backend glx & # --experimental-backend # experimental backend causes memleak
# feh --bg-fill "$HOME/Pictures/natural.png" &
xrdb ~/.Xresources &
bash ~/.dwm/statusbar.sh 2>&1 > /dev/null &
lxsession &
# sxhkd &
# oneko -sakura -tofocus -time 85000 &
wired &
xset 180 # 3 minute timeout
xset s 420
xss-lock -- ~/bin/lock &
redshift &
# urxvtd -q -o -f &
# easyeffects -w &
nitrogen --restore &
bash ~/.dwm/background.sh 2>&1 > /dev/null &