#!/bin/env bash

# this script demonstrates arithmetic automation
# uses $((expression))

set -euo pipefail

## the arithmetic expansion follows the rules of c programming
## meaning the precedence of operators is the same as in c programming

num1="16a"
num2="3"

# addition
sum=$((num1 + num2))

#subtraction
difference=$((num1 - num2))

division=$((num1 / num2)) # take not only interger division works bash has no float division

echo "$difference, $sum, $division"

# modulus
modulus=$((num1 % num2))
echo "modulus: $modulus"

# if you need to use float division you can use bc command line calculator
float_division=$(echo "scale=3; $num1 / $num2" | bc -q)
echo "float division: $float_division"

