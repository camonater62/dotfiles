#!/bin/bash

DIM=$(xdpyinfo | awk '/dimensions/{print $2}')
xwinwrap -fa -fdt -un -s -b -g $DIM -nf -ni -ov -- living-worlds
