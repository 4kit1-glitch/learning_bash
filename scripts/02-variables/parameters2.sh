#!/bin/bash

clear
# the value of the IFS VARIABLE CAN AFFECT THE OUTPUT FOR INSTANCE BLW
OLDIFS=$IFS
IFS=,        # changing IFS value

#printing variables position
echo "first = $1"
echo "second = $2"
echo "third = $3"

echo "all IN ONE STRING = $*"

## reseting IFS
IFS=$OLDIFS
