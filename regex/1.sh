#!/bin/env bash

# progam studies regex using the rm.txt file which is a kit summary 
# program uses the grep so read "man grep" 

# DONT RUN THIS SCRIPT
set -euo pipefail

# 1. the use of anchors ^  and $


cd regex    # making sure am in my folder

# find the lines that start with -
grep -E '^-' rm.txt


# find the lines that end in .

grep -E '\.$' rm.txt  # the use of the escape char is used to make the special symbols literal

# count all lines that are empty
grep -E -nv '.' rm.txt
grep -E -nv '^$' rm.txt






