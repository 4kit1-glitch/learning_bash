#!/bin/env bash

# learning to use sed commands in linux
# find and replace in sed

set -euo pipefail
cd ~+/sed

# you use the s/ tag infront of the pattern 
## example 
### sed 's/old/new/' ## the old and new can be whole regex patterns 

clear
# replace the first occurance
sed 's/erors/errors/' config.txt 

# the above command makes it such that sed checks only the first occurence
# but if we are to make it such that it should replace each occurence use the /g char at the end of thr epattern

clear
sed 's/erors/errors/g' config.txt | sed 's/ar/are/g' config.txt # multiple finding and replacing with pipes

clear

# ok lets say we wanna insert a char at the start of each line 
sed 's/^/# /' config.txt

# use . for any char , * for all , $ for end 
clear 

# finding and replacing multiple things with the -e command
sed -e 's/erors/errors/g' -e 's/ar/are/g' -e 's/dos/those/g' -e 's/^/# /' config.txt ## combining patterns 

