#!/bin/bash
#George Paul 23mca029

echo "Enter a set of numbers separated by spaces:"
read -a numbers

# Check if there are at least two numbers
if [ ${#numbers[@]} -lt 2 ]; then
    echo "Please enter at least two numbers."
    exit 1
fi

# Initialize variables for the highest and second highest numbers
highest=${numbers[0]}
second_highest=${numbers[0]}

# Loop through the numbers to find the highest and second highest
for num in "${numbers[@]}"; do
    if [ $num -gt $highest ]; then
        second_highest=$highest
        highest=$num
    elif [ $num -gt $second_highest ] && [ $num -lt $highest ]; then
        second_highest=$num
    fi
done

echo "Second-highest number is: $second_highest"
