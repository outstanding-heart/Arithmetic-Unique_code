#!/bin/bash
# File name: delete
# Author: Lee.HJ
# Description: A script file that move the file or dictionary to trash box

if [ $# -eq 0 ]
then
	echo " Usage:delete file1 .... "
else
	echo " You are about to delete these files:"
	echo $@
	echo -n "Are you sure to do that?[Y/n]"
	read -n 1 reply

	if [ "$reply" != "n" ] && [ "$reply" != "N" ]
	then 
		for file in $@
		do
			if [ -f "$file" ] || [ -d "$file" ]
			then
				mv "$file" ~/.Trash  # ~/.trash/
				printf "\n****$file has been removed to trash box!****"
			else
				echo "$file : No such file or directory"
			fi
		done
	else
		echo "No file removed"
	fi
	printf "\n"
fi
