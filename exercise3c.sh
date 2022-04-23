#!/bin/sh

read -p "Enter your numbers:" balls  
read -p "Enter your number:" bonus

echo $balls >> userlotery.log
echo $bonus >> userlotery.log

echo ` grep -f userlotery.log lotery.log`


