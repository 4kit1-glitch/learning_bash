#!/bin/env bash

# script demonstrates interactive editing in sed
# to run remove the clear statements one by one 
set -euo pipefail

# printing lines containing a file patterns
cd ~+/sed   # move to directory of file
cat -n config.txt # see full file numbered

clear

# this command prints the whole file and prints where the pattern matches twice
sed '/erors/p' config.txt

clear

# to ensure on ly the pattern we want matches we use the 
sed -n  '/erors/p' config.txt

clear
# deleting lines of input
sed '/errors/d' config.txt   # this only edits the output without modifying the original file

clear

# showing use of regex in this file 

# list all lines that start with this and end with errors
sed -n '/^this.*errors$/p' config.txt

# line that contains any digit




