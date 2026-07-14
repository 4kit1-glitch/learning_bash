#!/bin/env bash

# script demonstrates use of gawk programming language
# it is data 
set -euo pipefail

df -h | grep -v "^Filesystem" | awk '{print $1 " size =" $2}' | sed '/none/d' # simple formatting with awk and sed and grep

clear
## sorting by size
df -h | sort -rnk 5 | head -3 | awk '{print "Partition: " $6 "\t: " $5 " warning!!!"}'

clear
## regex in awk
## syntax awk '/pattern/ { action }' file

cd /home/kit/Kitstdios/learning_bash/awk
awk '/[0-9]+/ {print }' config.txt

clear

## conditionals in awk 
awk '{
    if ($2 > 1000 && $2 != "null")
        print $1 " = "  $2
    else if ($2 == "null")
        print $1 " = !!"  $2
    else
        print $1 " =.. "  $2
    }' config.txt

# looping in awk