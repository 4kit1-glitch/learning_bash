#!/usr/bin/env bash

# testing while loops 
# This script opens 4 terminal windows.

i=0
while true; do 
    echo "$i still running forever"
    sleep ${i} && ((i++))
    if (( i >= 10 )); then 
        break
    fi
done