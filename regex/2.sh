#!/bin/env bash

# script demonstrates the use of regex using grep 
# DINT RUN THIS SCCRIPT
set -euo pipefail


#character classes -- match a set of characters -- matches only single chars
# []

# 1. [abc] - matches  a, b or c 
# 2. [^abc] - dont match any line with a,b,c

grep -E '[abc]' /etc/shared/dict
grep -E '[^abc]' /etc/shared/dict

grep -E [0-9] ## matches all single digits 
grep -E [0123456789] ## same as the above 

grep [a-z] # ;aowecase letters

## 
grep -E [A-Za-z]    # match any letter 

## folowing postix standards we have

grep '[[:digit:]]' rm.txt   # matches all digits in the current local -- more portable

grep '[[:space:]]' matches wihitespaces and empty lines

grep [[:alpha:]]    # matches all single letters equiv to char set of current local

