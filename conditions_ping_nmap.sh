#!/bin/bash

#ping using Nmap


#gloobal variables

IP_ADDRESS=$1

function ping_host()
{
	ping_cmd=$(nmap -sn $IP_ADDRESS | grep "Host is up")
}

# -z option will check string is empty ? if yes then it will print Host is down else it will print Host is up


function print_status()
{
	if [[ -z $ping_cmd ]]
	then 
	echo "Host is down"
	else
	echo "Host is up"
	fi
}

ping_host
print_status
