#!/bin/bash

free -mh | awk 'NR==2{printf "%s\n", $3}'
