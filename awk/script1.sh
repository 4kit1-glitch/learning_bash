#!/bin/env bash

# script demonstrates use of gawk programming language
# it is data 
set -euo pipefail

df -h | grep -v "^Filesystem" | awk '{print $1 " size =" $2}' | sed '/none/d' # simple formatting with awk and sed and grep

