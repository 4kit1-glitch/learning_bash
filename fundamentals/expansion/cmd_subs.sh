#!/bin/env bash 

# correct way to do nest 
# baware any time you seem to need more than 2 command nest split with variables
set -euo pipefail # this tag combination 
clear
## exawcmple
files="$(cd ~/Videos && ls *.mp4)"
all_file=$(find ~/Videos -type f -name "*.mp4")

echo -e "$files\n"
echo $all_file