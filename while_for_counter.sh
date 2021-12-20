#!/bin/bash

#progress bar with while loop

counter=1

bar='##########'

while [[ $counter -lt 11 ]]
do
echo -ne "\r${bar:0:counter}"
sleep 0.5
counter=$(( $counter + 1 ))
done

printf "\n"

for cnt in {1..10}
do
echo -ne "\r${bar:0:$cnt}"
sleep 1
done
