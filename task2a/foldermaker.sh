#!/bin/bash
#shebang, must use for every script

read -p "provide a name for the directory: " foldername
#echo folderName

mkdir "$foldername"
#makes directory
echo "The $foldername directory has been created."
#another echo

cp foldermaker.sh $foldername
#copies the folder

echo "The file foldermaker.sh has been copied to the $foldername directory"

