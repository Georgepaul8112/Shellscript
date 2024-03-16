#!/bin/bash
#George Paul
#23mca029
echo  "Enter a string :"
read inputstring
inputstring_nospace=$(echo "$inputstring" | tr -d ' ')
reverse_string=$(echo "$inputstring_nospace" | rev)
if [ "$inputstring_nospace" = "$reverse_string" ];then
	echo "$inputstring is a palindrome."
else
	echo "$inputstring is not a palindrome."
fi
