#!/bin/sh


if cmp	--silent a121.txt a122.txt;
then
	echo "No common elements found"

else
	echo "Your files have the following common elements"
	echo `comm -12 -12 a121.txt a122.txt`
fi

























 	



