#!/usr/bin/env bash

set -euo pipefail

## script demonstrates the until loop

#***********************************************************
#   until condition ; do 
#       commands;
#   done
#
#
#***********************************************************

MAX_TRIES=3
CODE=990


until (( $MAX_TRIES <= 0 )); do 
    read -r -p "Enter code for access: " input
    
    if (( $input == $CODE )); then
        echo "Access granted"
        break
    fi
        (( MAX_TRIES-- ))
done
