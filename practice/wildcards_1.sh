#!/bin/bash

read -p "Please enter a file extension: " EXTN
read -p "Please enter a file prefix: (Press ENTER for YYYY-MM-DD) " PREFIX
echo "File Extension: ${EXTN}"
echo "File PREFIX: ${PREFIX}"

DEFAULTPREFIX=$(date +%F)

if [[ -z "${EXTN}" ]] 
then 
	echo "Exiting Script as Extension is empty.." 
	exit 1 
fi

if [[ ! -z "${PREFIX}" ]]
then 
	DEFAULTPREFIX=${PREFIX}
fi

for FNAME in *.${EXTN}
do 
	echo "Renaming $FNAME to ${DEFAULTPREFIX}-${FNAME}"
	mv $FNAME ${DEFAULTPREFIX}-${FNAME}
done
