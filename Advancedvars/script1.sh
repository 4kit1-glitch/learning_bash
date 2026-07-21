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