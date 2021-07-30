#!/bin/bash

if [[  -f "${1}" ]] 
then 
	echo "${1} is a regular file" 
	exit 0
elif [[ -d "${1}" ]]
then 
	echo "${1} is a directory" 
	exit 1
else 
	echo "${1} is a unknown type of file"
fi 

cat /etc/shadow

if [[ "${?}" -eq 0 ]]
then 
	echo "Command succeeded" 
else 
	echo "Command failed" 
fi 

