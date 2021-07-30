#!/bin/bash

VARIABLE="Shell Scritping is Fun!"
echo "${VARIABLE}"

HOST=$(hostname)
echo "This script is running on ${HOST}"

if [[ -e "/etc/shadow" ]]
then 
	echo "Shadow passwords are enabled."
fi 

if [[ -w "/etc/shadow" ]] 
then 
	echo "You have permissions to edit /etc/shadow."
else 
	echo "You do NOT have permissions to edit /etc/shadow."
fi

ANIMALS="man bear dog cat"
for NAME in $ANIMALS
do 
	echo "${NAME}"
done

#read -p "Enter the name of a file", FNAME

for FNAME in "${@}"
do 
if [[ -f "$FNAME" ]]
then 
	echo "${FNAME} is a regular file"
elif [[ -d "${FNAME}" ]]
then
	echo "${FNAME} is a directory"
else 
	echo "${FNAME} is a other type of file" 
fi 
done

ls -l "${0}"

