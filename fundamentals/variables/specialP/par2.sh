#!/bin/bash

clear

# the $@ is very similanr to the $* the only difference lies whrn they are in ("") Double quotes

# 1. @ the value of the parameters are treated separately its able to detect strings and it is also more safer

echo "Program prints parameters passed"

for var in "$@"; do
    echo "var= $var"
done

echo "There are $# parameters passed"       # the "$#" special parameter expands to the number of parameters passed