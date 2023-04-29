#!/bin/bash

## Check for parameters
[ ${#} -ne 2 ] && exit 1
## Assign values to custom variables
NUM1=${1}
NUM2=${2}

## Check for floating-point values
if ! [[ "${NUM1}" =~ ^[+-]?[0-9]*\.?[0-9]+ ]]; then
    echo "NUM1 is not a floating-point number"
    exit 3
fi

if ! [[ "${NUM2}" =~ ^[+-]?[0-9]*\.?[0-9]+ ]]; then
    echo "NUM2 is not a floating-point number"
    exit 4
fi

## Perform sum operation
RES=$(expr ${NUM2} + ${NUM1})

## Prints out the result
echo "sum = ${RES}"

exit 0