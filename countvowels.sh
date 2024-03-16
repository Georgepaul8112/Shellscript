#!/bin/bash
#George Paul 23mca029
echo "Enter a line of text:"
read line
line=$(echo "$line" | tr '[:upper:]' '[:lower:]')
vowel_count=0
for ((i=0;i<${#line};i++))do
char="${line:$i:1}"
case $char in
[aeiou])
vowel_count=$((vowel_count + 1))
;;
esac
done
echo "Number of vowels in the line: $vowel_count"
