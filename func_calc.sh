#!/bin/bash

# global variables

num1=${1:-0}
num2=${2:-0}
num3=${3:-0}

#function to print calculator string

function print_string()
{
	echo $1
}

function add()
{
	total=$(($num1+$num2+$num3))
}

function print_total()
{
	echo "-----------------------"
	printf "%s %d\n" "Total is :" $total
}

print_string "CALCULATOR"
add
print_total
