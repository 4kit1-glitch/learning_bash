#!/bin/env bash

# script does some practice exercises on 
# always call all variables using Quotes to avoid unexpected word splitting unless desired

set -euo pipefail

## rule of multiplication first befoore division to maintain precision
mult=$((10 * 3 / 4))    # correct preserve presition
div=$((10 / 3 * 4))     # wrong

printf "div = %d\nmult = %d \n" "$div" "$mult"

clear

((10 >= 13)) && name="harrison" || name="benson"    # 1 liner
echo "$name"
