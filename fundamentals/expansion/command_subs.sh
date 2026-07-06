#!/bin/env bash

# demonstrates command substitution

set -euo pipefail

## command substitution lets you use the result of a command as input to another operation
#  there are two ways of doing it 1. using ` `backticks and using $() the later is more mordern but backtics still 
# exist for legacy scripts

vids=$(ls ~/Videos > vids.txt 2>&1)
pics=$(ls ~/Pictures | tee -a vids.txt)

## using backticks
pwdl=`pwd`   # legacy avoid this
echo $pwdl

## Nesting commands 

# nesting with backticks are harder to read and dont nest cleanly
outer="$(echo "inner: $(echo "am in $(echo "deeper within the deep")")")" # 3 nests

echo $outer


