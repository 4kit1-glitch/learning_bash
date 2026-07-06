#!/bin/env bash 

set -euo pipefail

## substituting and matching patterns

echo "rule = {var/pattern/replacement}"

var=~/Videos
var2="https://www.harison.com"

## change domain name to .org

var2=${var2/.com/.org}   ## it finds first match and changes it 
echo $var2 



# // changing all matches use {varname//pattern/repacement}
echo $var
echo ${var//"/"/,}


## take note 
# an unset variable is not same as an empty variable 

var3="" # empty variable

echo $var3
echo ${var3:-"garry"} ## this works cause the : also checks for empty
unset var3
echo - ${var3-"harison"}

clear
### lowercasing and uppercasing everything
var4="heLLo"

echo $var4