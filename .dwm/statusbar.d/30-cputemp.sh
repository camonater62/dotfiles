#!/bin/bash

sensors coretemp-isa-0000 | grep Package | awk -F\  '{ print $4 }' | cut -c 2-
