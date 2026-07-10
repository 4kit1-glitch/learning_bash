#!/bin/env bash

# progam studies regex using the rm.txt file which is a kit summary 
# program uses the grep so read "man grep" 
set -euo pipefail

# 1. the use of anchors ^  and $


cd regex    # making sure am in my folder
# find the lines that start with -
grep -E "^-" rm.txt





