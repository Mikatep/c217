#!/bin/sh

mkdir activity2test

touch file1 file2 file3

DATE=`date +%Y.%m.%d`

rename -v file file$DATE file?


