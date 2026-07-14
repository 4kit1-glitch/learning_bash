#!/bin/env bash

# script test expressions used with if
cd /home/kit/Kitstdios/learning_bash/conditionals
set -euo pipefail

# test if a file exists
if [ -a print.c ]; then
    echo "print file exist"
    cat print.c;
fi
