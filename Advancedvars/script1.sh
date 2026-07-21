#!/usr/bin/env bash

# script shows usae of more advanced concepts in 


# using the declare statement to make variables 
# syntax : display -option  var_name=value
# read man_page to get options


## creating a forced interger behavior
declare -i var=7

echo $var

var="harrison"

echo $var # the result defaults to 0 because it holds just interger values

var=9.89    # error

echo $var

clear

## making a variable read only
declare -r var2="harrry"

var2="mbappe"   # error read only variable

# andother way of creating read-only variables 
readonly var3="void"

var3=6
