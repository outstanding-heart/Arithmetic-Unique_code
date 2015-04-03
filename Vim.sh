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

	if [ $Type == "c" ] || [ $Type == "h" ];

	then
		echo "/* ----------------------------------------------------- */" > $filename
		echo "/* Filename: $filename */" >> $filename
		echo "/* Author: Lee.HJ */" >> $filename
		echo "/* Time: $time */" >> $filename
		echo "/* Describtion:  */" >> $filename
		echo "/* ----------------------------------------------------- */" >> $filename
		printf "\n" >> $filename
		echo "/* Include --------------------------------------------- */" >> $filename
		printf "\n" >> $filename
		echo "/* Private define -------------------------------------- */" >> $filename
		printf "\n" >> $filename
		echo "/* Private typedef ------------------------------------- */" >> $filename
		printf "\n" >> $filename
		echo "/* Private variables ----------------------------------- */" >> $filename
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
	
	else
		echo "/********************************************/" > $filename
		echo "/* Filename: $filename */" >> $filename
		echo "/* Author: Lee.HJ */" >> $filename
		echo "/* Time $time  */" >> $filename
		echo "/********************************************/" >> $filename
		printf "\n\n" >> $filename

	fi

	vim $filename
fi

