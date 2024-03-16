#!/bin/bash
#George Paul
#23mca029
echo "Enter a number :"
read number
reverse=$(echo "$number" | rev)
if [ "$number" -eq "$reverse" ]; then
	echo "$number is palindrome."
else
	echo "$number is not a palindrome."
fi
