#!/bin/env bash

# script demonstrates the use of regex using grep 
set -euo pipefail


#character classes -- match a set of characters -- matches only single chars
# []

# 1. [abc] - matches  a, b or c 
# 2. [^abc] - dont match any line with a,b,c

grep -E '[abc]' /etc/shared/dict
grep -E '[^abc] /etc/shared/dict

