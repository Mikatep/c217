#!/bin/sh

echo "Check you password's streght"

read -p "PLEASE ENTER YOUR PASSWORD HERE:" PASSWORD
COUNT="${#PASSWORD}"
if test $COUNT -ne 8 ;then 
	echo "Password lenght should be at least 8 characters"
fi
echo "$PASSWORD" | grep '[A-Z]' | grep '[a-z]' | grep '[0-9]' | grep '[!?.,:;¬£$()@<>/\|=+`#$%^&*]'
if test  $? -ne 0 ;then	
	echo "Password must contain at least an uppercase, lowercase, number and a special character"
else 
	echo "Your password is strong"
fi


