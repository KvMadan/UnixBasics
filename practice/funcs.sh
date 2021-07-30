#!/bin/bash

function log() {
	echo "This is a function"
	now
}

logger() {
	echo "This is a another function"
	echo "It's $(date +%r)"
}

logger1(){
	for NAME in $@
	do 
		echo "Hello $NAME"
	done
}

# This function takes the directory as argument and prints the number of files in that directory.
file_count() {
	local DIR="${1}"

	if [[ ! -d ${DIR} ]]
	then 
		echo "$DIR does not exist. Exiting.."
		exit 1
	fi 
	local COUNT=$(ls ${1} | wc -l)
	echo "Name of the Directory: ${1}"
	echo "Number of files present in the directory (${1}) : ${COUNT}"
}

log
logger
logger1 Madan Ramya Mahith
echo $? 
file_count /Users/madan.kavarthapu/Downloads/
file_count /etc
file_count /var
file_count /usr/bin
file_count /doesnot/exist
