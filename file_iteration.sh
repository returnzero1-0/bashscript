#!/bin/bash

# ping and get DNS name for a list of IPs saved in a file

read -p "Enter the IP addresses file name/ path:" FILE_PATH_NAME


function check_host()
{
	#if not the IP address values is empty

	if [[ -n $IP_ADDRESS  ]]
	then
		ping_cmd=$(nmap -sn $IP_ADDRESS | grep 'Host is up' | cut -d '(' -f 1)
		echo '---------------------------------------------------------------'
		if [[ -z $ping_cmd ]]
		then
			printf "$IP_ADDRESS is down\n"
		else
			printf "$IP_ADDRESS is up\n"
			dns_name
		fi
	fi
}

function dns_name()
{
	dns_name=$(host $IP_ADDRESS)
	printf "$dns_name\n"

}


#iterate IP address inside file

for ip in $(cat $FILE_PATH_NAME)
do
	IP_ADDRESS=$ip
	check_host
done



























