#!/bin/sh

difference1=`comm -1 -3 <(sort file1.txt) <(sort file2.txt)`

difference2=`comm -2 -3 <(sort file1.txt) <(sort file2.txt)`

echo "Only in file 1 $difference1"

echo "Only in file 2 $difference"


#using grep

echo "Only in file 2: `grep -xvf file1.txt file2.txt`"
echo "ONly in file 1: `grep -xvf file2.txt file1.txt`"


































 	



