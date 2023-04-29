#!/bin/bash

## Task One & Two, vaildate a floating point inputs

##Requirements:
#	Check the numbers of inputs if not valid exit 1
#	Check if both are a floating numbers if not valid exit 2
#	Do any mathmatical Operation and show the output

## Check the numbers of inputs
[ ${#} -ne 2 ] && exit 1

NUM1=$1
NUM2=$2
## Validate the inputs 

$(echo "${NUM1}" | grep -Eq "^[+-]?[0-9]+([.][0-9]+)?$") || exit 2
$(echo "${NUM2}" | grep -Eq "^[+-]?[0-9]+([.][0-9]+)?$") || exit 3

RESULT=$(echo "$NUM1 + $NUM2" | bc -l)
echo $RESULT

exit 0
