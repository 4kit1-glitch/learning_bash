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

if [[ -s empty_file.sh ]]; then
    echo "an empty file"
fi