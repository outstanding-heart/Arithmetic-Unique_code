#!/bin/bash

filename=$@
time=$(date)

if [ -e $filename ];
then
	vim $filename

else
	touch $filename
	
	oldIFS=$IFS;
	IFS="."
	count=0
	for item in $filename;
	do
		filedata[count]=$item;
		let count++
	done;
	IFS=$oldIFS

	length=${#filedata[@]}
	let length--

	if [[ ${filedata[$length]} == "c" ]];
	then
		echo "/********************************************/" > $filename
		echo "/* Filename: $filename */" >> $filename
		echo "/* Author: Lee.HJ */" >> $filename
		echo "/* Time: $time */" >>$filename
		echo "/********************************************/" >> $filename
		printf "\n\n" >> $filename
		
	elif [[ ${filedata[$length]} == "sh" ]];
	then
		echo "# !/bin/bash" > $filename
		echo "# Filename: $filename" >> $filename
		echo "# Author: Lee.HJ" >> $filename
		echo "# Time: $time" >>$filename
		printf "\n\n" >> $filename
	elif [[ ${filedata[$length]} == "py" ]];
	then
		echo "# !/bin/bash" > $filename
		echo "# Filename: $filename" >> $filename
		echo "# Author: Lee.HJ" >> $filename
		echo "# Time: $time" >>$filename
		printf "\n\n" >> $filename
	fi

	vim $filename
fi

