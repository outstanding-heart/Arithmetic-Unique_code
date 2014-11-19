#!/bin/bash

#if [ ! -d ~/.trash ]
#then
#	mkdir ~/.trash
#fi

if [ $# -eq 0 ]
then
	echo " Usage:delete file1 .... "
else
	echo " You are about to delete these files:"
	echo $@
	echo -n "Are you sure to do that?[Y/n]"
	read reply

	if [ "$reply" != "n" ] && [ "$reply" != "N" ]
	then 
		for file in $@
		do
			if [ -f "$file" ] || [ -d "$file" ]
			then
				mv -r -b "$file" ~/.local/share/Trash/files  # ~/.trash/
				touch ~/.local/share/Trash/info/$file.trashinfo
				echo "`pwd $file.trashinfo`"
				echo "[Trash Info]" >$file.trashinfo
				echo "Path=`pwd`/$file" >>$file.trashinfo
				echo "DeletionDate=`date`" >>$file.trashinfo
#				mv -b "$file.trashinfo" ~/.local/share/Trash/info
			else
				echo "$file : No such file or directory"
			fi
		done
	else
		echo "No file removed"
	fi
fi
