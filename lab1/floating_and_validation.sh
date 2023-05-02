#!/bin/bash

##Check for params
[ ${#} -ne 2 ] && exit 1

##Assign values to custom variables
NUM1=${1}
NUM2=${2}

##Check for float values
[ $(echo "${NUM1}" | grep -c "^\-\{0,1\}[0-9]*\.[0-9]*$") -ne 1 ] && exit 3
[ $(echo "${NUM2}" | grep -c "^\-\{0,1\}[0-9]*\.[0-9]*$") -ne 1 ] && exit 4

##Perform division operation
ADD=$(echo " ${NUM1} + ${NUM2} " | bc)

## Prints out the result
echo "sum = ${ADD}"

exit 0