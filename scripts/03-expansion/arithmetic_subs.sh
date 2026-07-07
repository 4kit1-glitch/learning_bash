#!/bin/env bash

# this script demonstrates arithmetic automation
# uses $((expression))

set -euo pipefail

## the arithmetic expansion follows the rules of c programming
## meaning the precedence of operators is the same as in c programming

num1="14"
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

# increment and decrement work also

count=0
max=10

echo "$count" "$max"
echo "incrementing count"
echo "$((count++)), new count: $count"
decremented_max=$((--max))
echo "decremented max: $decremented_max"

## asignment operators also work
count=$((count + 5))
echo "count after assignment: $count"

## combbined assignment operators also work
count=1
: $((count *= 2))
echo "count after combined assignment: $count"



clear

echo "scale=3; 5/2" | bc