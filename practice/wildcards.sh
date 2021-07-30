#!/bin/bash

# This program explains how to use wildcard characters 
#cd /Users/madan.kavarthapu/Downloads/
for FILE in /Users/madan.kavarthapu/Downloads/*.pdf
do 
	#FL=$(basename ${FILE})
	echo "File: $(basename ${FILE})"
done

# Rename all files ends with *.jpg in the given directory with today's date in the format YYYY-MM-DD 
for JPEGFILE in /Users/madan.kavarthapu/Downloads/*.jpg
do 
	echo "File: ${JPEGFILE}"
	mv ${JPEGFILE} $(date +%F)-$(basename ${JPEGFILE}) 
done
