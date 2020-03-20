#!/bin/bash

rtdir=~/CSP2101/

while true; do


echo "AVAILABLE DIRECTORIES IN $rtdir:"
ls $rtdir

read -p "select directory from the list above: " seldir

if [ -d "${rtdir}${seldir}" ]; then # ~/CSP2101/pwords
	#echo "Exists.. "
	echo "Request contents of $seldir directory: "

		if [ "$(ls -A ${rtdir}${seldir})" ]; then
			
			echo "Yes, there are files: "
			ls ${rtdir}${seldir}
			#If True
		else	
			echo "$selder directory is empty. "
			#if False

		fi

		break
	
else 
	echo "Does not exist.. "
	

fi

done