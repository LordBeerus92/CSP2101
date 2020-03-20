#!/bin/bash

						#First part of script

rtdir=~/CSP2101/

while true; do


	echo "AVAILABLE DIRECTORIES IN $rtdir:"
	ls $rtdir

	read -p "select directory from the list above: " seldir

		if ! [ -d "${rtdir}${seldir}" ]; then 
		#echo "Exists.. "
		echo "Directory does not exist. Try again. "

		else	
			echo "You have selected the $seldir directory. "
			break

		fi

done
	

						#Second part of script	
#Request password from user

while true; do

	read -s -p "Select password for future use: " selpw

		if ! [ -z "$selpw" ]; then
			echo "Password accepted. "
			break

		else
			echo "Not accepted. Try again. "

		fi

done

#Write password to selected textFile

if ! [ -f "${rtdir}${seldir}/secret.txt" ]; then

	echo "secret.txt does not exist. Creating.."
	touch ${rtdir}${seldir}/secret.txt
	echo "$selpw" > "${rtdir}${seldir}/secret.txt"
	echo "Password written to ${rtdir}${seldir}/secret.txt"
	cat "${rtdir}${seldir}/secret.txt"


else 
	echo "secret.txt already exists. Writing password to file. "
	echo "$selpw" >> "${rtdir}${seldir}/secret.txt"
	echo "Password written to ${rtdir}${seldir}/secret.txt"
	cat "${rtdir}${seldir}/secret.txt"
fi

exit 0

