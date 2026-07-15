#!/bin/env bash

# script test expressions used with if
cd /home/kit/Kitstdios/learning_bash/conditionals
set -euo pipefail

# test if a file exists
if [ -a print.c ]; then # avoid this in new scripts have other meaning 
    echo "print file exist"
fi

clear
# test if file exist and is a directory
if [ -d "/home/kit/Kitstdios/learning_bash/conditionals" ]; then
    echo "print file exist and is a dir"
fi

clear
# correct way to test if file exist
if [ -e print.c ]; then
    echo "file exist well done";
fi

clear
# check if file is regular and exist
if [ -f print.c ]; then
    echo "file is regular";
fi

clear
# check if file is empty
# from here on i will be using [[ ]]

if [[ -s "empty_file.txt" ]]; then
    echo "an empty file"
fi

clear
## check if file exist and is readable
if [[ -r print.c ]]; then
    echo "file is readable and exist"
else
    echo "failure"
fi

## checks if file writable
if [[ -w print.c ]]; then
    echo "file is writable and exist"
else
    echo "failure"
fi

## check if file is executable
if [[ -x print.c ]]; then
    echo "file is executable and exist"
else
    echo "failure"
fi
clear

# check if file is a socket file
[[ -S file.sock]] && echo "this is a socket file"
clear

