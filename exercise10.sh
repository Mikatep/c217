#!/bin/sh

read -p "Please enter filename:" Filename
read -p "Please enter number of lines:" lines



echo "File name: $Filename";
echo "Number of lines: $lines";

FILE=$Filename

RANDOM=$$
if [[ -f "$Filename" ]]; then
	echo "$Filename exist try with different name"
else
	                echo "Your file has been created, use ls -ltr and less plus your file name to see it"
	for ((i=0;i<$lines;i++))

	do
		echo $RANDOM >> $FILE
	done
fi














 	



