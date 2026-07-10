#!/bin/env bash

# script demonstrates process substitution
# process substitutioin is when you want to use an output of a command as the input to a command 
# than needs files as parameters

set -euo pipefail

# gets difference between two texts without making temporal values
echo "$(diff -p <(echo "hello mr beast") <(echo "hello mr beast."))"


# note the <(cmd) uses the output of a command as the file
# the >(cmd) take input from user and uses as files
