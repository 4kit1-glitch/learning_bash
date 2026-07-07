#!/bin/env bash 

set -euo pipefail

# stripping matches from the front 

var=~/Videos
var2="https://www.harison.com"

echo full path = ${var:- none}

echo path without first /
echo ${var#/*}
echo ${var##*/}  ## this is a very greedy means strip everything behind andd including the first match 

echo ${var2##*.} # output == com"

## striping matches from the back use the % sign -- %% for longest and % for first match

echo ${var2}

echo removing from left= ${var2%.*}
echo ${var2%%.*}