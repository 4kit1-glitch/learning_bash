#!/bin/bash

# this script tries to demnstrtate the difference between $* $@
clear

echo "parameters inputed using $ *"

for par in "$*"; do
    echo "para = $par"
done


echo "parameters using $ @"

for par in "$@"; do
    echo "para = $par"
done


## the real test lies when the parameters are a string and an and individual
## example test with "kengah Ireneaus" and Tambang to see difference
