#!/bin/sh

echo "File 1 contains:"
echo `comm -13 file1.txt <\( sort -nu file2.txt\)`

echo "File 2 contains:"
echo `comm -23 <\(sort file1.txt\) <\( sort -nu file2.txt \)`






















 	



