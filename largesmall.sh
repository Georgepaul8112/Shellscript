#!/bin/bash
#George Paul 23mca029
echo "Enter a set of numbers separated by spaces:"
read -a numbers

# Initialize variables for the smallest and largest numbers
smallest=${numbers[0]}
largest=${numbers[0]}

# Loop through the numbers to find the smallest and largest
for num in "${numbers[@]}"; do
    if [ $num -lt $smallest ]; then
        smallest=$num
    fi

    if [ $num -gt $largest ]; then
        largest=$num
    fi
done

echo "Smallest number: $smallest"
echo "Largest number: $largest"
