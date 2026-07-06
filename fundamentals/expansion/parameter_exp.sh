#!/bin/env bash

set -euo pipefail

clear

echo learning parameter expansion

##################################################################################################
#   parameter expansion is when the shell tries to expand the parameters mearning this parameter is usually
#   a variable name
#   use $var_name -- easy
#   note the use of {} is optional but must be used for some special cases
#
#
#
#
#
#
#
##################################################################################################


# variables

age=89
status="off line"

# commands without {}
echo $age
echo $status

# commands with brace
echo age=${age}yrs
echo first param = ${$-}      # do not use to expand special parameters in scripts -- undefined output


## combining brace and tilde and parameter expansion
printf "Device name %s\n" "${USER}"


: ${HOME:=~+}    # SETTING DEFAULT VALUE FOR HOME VARIABLE IF EMPTY this uses tilde expansion

echo "default info:{age=${age}yrs,status=${status},main=${HOME}}" # combining the first 3 expansions in one line

## full param expansion + modifiers
default="Harry"
echo "${var:-$default}" # use default if var is unset 


: ${var:=$default}      # sets var to defualt id empty
echo var= $var

## alt is used when you need an action if a variable already exist
var1=90000
: ${var1:+alt}  #use alt if var1 is set alt (alt is simply an alternative word)
echo ${#var1}   # use to get the lenght of the variableor parameter even an interger is treated as a count num of digits

car="Yaris"
: ${car:?car required}
echo $? # script exits if it fails
