#!/bin/bash

read -p "Enter your first name:" fname
read -p "Enter your last name:" lname

printf "Dear %s %s, how are you today !\n" $fname $lname
