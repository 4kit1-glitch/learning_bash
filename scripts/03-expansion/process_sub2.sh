#!/bin/env bash

# script demonstrates the other side of process substitution >()

set -euo pipefail
clear 

## standard settup

# command1 > >(command2)
# the result of command 1 is written to an abituary file
# what ever is written becomes command2 stdin


## example1

ls ~/Videos > >(cat) # cat reads the output of an abituary file ehich simply holds the output of the ls cmd


## example 2

#### exec > >(tee -a /home/kit/Kitstdios/learning_bash/resources/logfile.log)

## another use-case

# sending output to two places with processing is another use case 

echo "Hello world" > >(grep -i "hello" > error.txt) 2> >(grep -i "warning" > error.txt)