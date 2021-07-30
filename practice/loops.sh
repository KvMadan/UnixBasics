#!/bin/bash 

# This program demonstrates while loop

VAR=1
while [[ $VAR -lt 2  ]] 
do 
	echo $VAR
	((VAR++))
done

LINE_NUM=1
read -p "How many lines would you like to see from  /etc/hosts file? " INPUT
while read LINE 
do 
	echo "${LINE_NUM} : ${LINE}"
	((LINE_NUM++))
	if [[ $LINE_NUM > $INPUT ]]
	then 
		break;
	fi
done < /etc/hosts

while [[ "$CORRECT" != "y" ]]
do 
	read -p "Enter your name: " NAME
	read -p "Is ${NAME} correct? " CORRECT
done

while true 
do 
	read -p "1: show disk usage. 2: Show uptime. 3. Show users logged into the system. (Enter q to quit.) " CHOICE
	case "$CHOICE" in 
		1) 
			df -h 
			echo 
			;;
		2)
			uptime
			echo 
			;;
		3)
			who
			echo 
			;;
		*)
			echo "Good Bye!" 
			echo 
			break
			;;
	esac
done

