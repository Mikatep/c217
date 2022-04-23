#!/bin/sh

file1=\home\ec2-user\c217\file1.txt
file2=\home\ec2-user\c217\file2.txt

echo "File 1 contains:"
echo `comm -13 .\home\ec2-user\c217\file1.txt <\( sort -nu .\home\ec2-user\c217\file2.txt)`

echo "File 2 contains:"
echo `comm -23 <\(sort $file1\) <\( sort -nu $file2\)`






















 	



