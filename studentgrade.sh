#!/bin/bash
#George Paul 23mca029
echo "Enter student's score:"
read score
get_grade() {
local score=$1
if [ $score -ge 90 ]; then
	echo "Grade : A"
elif [ $score -ge 80 ]; then
	echo "Grade : B"
elif [ $score -ge 70 ]; then
	echo "Grade : C"
elif [ $score -ge 60 ]; then
	echo "Grade : D"
else
	echo "Grade : F"
fi 
}
get_grade $score
