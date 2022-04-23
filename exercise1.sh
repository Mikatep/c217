#!/bin/sh

echo "Your user is: $USER"

echo "The date is:" `date +%Y.%m.%d`

echo "The time is:" `date +%T`

echo "The current working directory is " `pwd`

echo "There are `ls | wc -l` files in your directory"

larg=`du -sh *| sort -rh | head -1`

echo "Biggest file in your directory is : $larg"

