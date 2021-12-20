#!/bin/bash

# This is simple calculator to add two numbers

# way 1
# num1=$1
# num2=$2


# way 2
num1=${1:-0}
num2=${2:-0}
num3=${3:-0}
num4=${4:-0}
num5=${5:-0}

total=$(($num1+$num2+$num3+$num4+$num5))

echo "----------------------------------"
printf "%s %d\n" "Sum of numbers= " $total 
printf "%s %d\n" "Number of parametes = " $#
echo "----------------------------------"
