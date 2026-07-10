#!/bin/env bash


# script demonstrating gobbling / file name expansion( think lik bash built in find command)
set -eou pipefail

# note *, ? , [] bash searches for one of these characters in an unqouted word if it finds it it considers
# the word as pattern 
# also set -f option cancels the effect of file name expansion


# example 1
# the * pattern describes all


echo _* # we can break this into three 

# 1. before the * pattern is like say _ then anything 
# 2. after the * pattern is like say anything that ends with *
# 3 so the above command literally be said as echo all files that begin with begins with _

echo *.txt # any file that ends with .txt

# th ? simply represents any single item 

# the [] carries a pattern 

ls [1-4]*
ls *.[Mm][Pp]4
