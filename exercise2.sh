#!/bin/sh

#The $DATE has been added to the name of the directory so it can be used everyday whitout encounter problems because the directory already exist.

DATE=`date +%Y.%m.%d`

mkdir activity2test$DATE

touch file1 file2 file3

rename -v file file$DATE file?


