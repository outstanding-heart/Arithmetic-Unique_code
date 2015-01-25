# !/bin/bash
# File name: Vim.sh
# Author: Lee.HJ
# Description: A strengthen vim~~~

filename=$@
time=$(date)

if [ -e $filename ];
then
	vim $filename

else
	touch $filename
	
	Type=${filename##*.}

	#oldIFS=$IFS;
	#IFS="."
	#count=0
	#for item in $filename;
	#do
	#	filedata[count]=$item;
	#	let count++
	#done;
	#IFS=$oldIFS

	#length=${#filedata[@]}
	#let length--

	if [ $Type == "c" ];

	then
		echo "/********************************************/" > $filename
		echo "/* Filename: $filename */" >> $filename
		echo "/* Author: Lee.HJ */" >> $filename
		echo "/* Time: $time */" >>$filename
		echo "/********************************************/" >> $filename
		printf "\n\n" >> $filename
		
	elif [ $Type == "sh" ];
	then
		echo "# !/bin/bash" > $filename
		echo "# Filename: $filename" >> $filename
		echo "# Author: Lee.HJ" >> $filename
		echo "# Time: $time" >>$filename
		printf "\n\n" >> $filename
	elif [ $Type == "py" ];
	then
		echo "# !/bin/bash" > $filename
		echo "# Filename: $filename" >> $filename
		echo "# Author: Lee.HJ" >> $filename
		echo "# Time: $time" >>$filename
		printf "\n\n" >> $filename
	fi

	vim $filename
fi

