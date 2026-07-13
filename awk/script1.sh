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

awk '//'