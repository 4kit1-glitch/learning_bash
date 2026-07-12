#!/bin/env bash 

set -euo pipefail

# Quantifyers  specify how many times to match 
# quantifyers attach to the thing in the left of it 

cd ~+/regex
clear

grep -Ei 't?T?heme' req.info

clear

## exactly the use of ?, + , * have been shown 

## now lets move to {n}

# lines with exactly 4 digits
grep -Eo '[0-9]{2,4}' req.info

clear

# lines with kit , ,fedora or linux
grep -Ei '(kit|fedora|linux){1}' req.info

exit