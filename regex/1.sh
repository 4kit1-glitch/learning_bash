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
grep -E -nv '.' rm.txt  ## DONT USE SLOW AND CONFUSING checks every sing line for a single char then reverses the rslt
grep -E -n '^$' rm.txt  # faster lines where the start and end touch

grep -Ev '^#|^$' rm.txt # strip comments and blank lines

#matching whole words use -w 
grep -Ew 'failed' rm.txt # strips where the failed stands alone as a full word

# matching with case insensitive
grep -Ei "error" rm.txt 

# matching words 

# matching start of words
# \< at the start

# match all lines that have the word You as start of a word
grep -Ei '\<You' rm.txt


# matching end of words 
# \> at the end

# match all lines that have tube as the end of the word 
grep -Ei 'tube\>'


#### demostrating | syntax in regex

# used to link two patterns
# it is low priority
# matches left then right in like an or statement

# match warnings and errors in the file
grep -Ei 'error|bug' rm.txt

# the ? command does some thing like if the char before before is present or absent
grep -Ei 'colou?r' rm.txt
 




