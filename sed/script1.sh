#!/bin/env bash

# script demonstrates interactive editing in sed
# to run script remove the clear statements one by one 
set -euo pipefail

# printing lines containing a file patterns
cd ~+/sed   # move to directory of file
cat -n config.txt # see full file numbered

clear

# this command prints the whole file and prints where the pattern matches twice
sed '/erors/p' config.txt

clear

# to ensure only the pattern we want matches we use the 
sed -n  '/erors/p' config.txt

clear
# deleting lines of input
sed '/errors/d' config.txt   # this only edits the output without modifying the original file

clear

# showing use of regex in this file 

# list all lines that start with this and end with errors
sed -n '/^this.*errors$/p' config.txt

clear
# line that contains any digit
sed -n '/[[:digit:]]/p' config.txt

clear

# range of lines
## this involves specifying the lines to remove that is form '2,4' -- 2 to 4
#diff <(sed '2,4d' config.txt) <(cat config.txt)

clear

# print the first two lines 
sed -n '1,2p' config.txt # this prints the first two lines of the file

clear
sed -n '1,2p; 4,5p' config.txt # this prints the first two lines and lines 4 and 5 of the file

clear
## actually modifying file use the -i flag
# sed -i '/[[:digit:]]/d' config.txt   #all lines with numbers deleted
clear

## delete from 2 to end  using the $ -- end place holder
sed '2,$d' config.txt ## prints just the first line
clear

## print from start to 4  
sed -n '1,4p' config.txt
clear


### ranging with patterns 
## it's format is quite simple, that is it's format is 
## sed -<tag> '/pattern1/,/pattern2/<option>'



# print the from line with a it is to line so much
sed -n '/it is/, /so much/p' config.txt
clear