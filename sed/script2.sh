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
# but if we are to make it such that 
