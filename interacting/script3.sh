#!/bin/bash

# storing input into multiple variables

IFS=","
read -r -p "first last: " first last # splitting is done by the default ifs value
echo $first and $last