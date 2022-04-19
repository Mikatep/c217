#!/bin/sh

read -p "Please enter the file name:" file

if test -f "$file"; then
	echo "$file exists."
else
	touch $file
	echo Your file has been created
fi







 	



