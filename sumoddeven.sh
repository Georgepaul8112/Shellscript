#!/bin/bash
#George Paul 23mca029

echo "Enter a set of numbers separated by spaces:"
read -a numbers

# Initialize variables for the sum of odd and even numbers
sum_odd=0
sum_even=0

# Loop through the numbers to calculate the sum of odd and even numbers
for num in "${numbers[@]}"; do
    if [ $((num % 2)) -eq 0 ]; then
        # Even number
        sum_even=$((sum_even + num))
    else
        # Odd number
        sum_odd=$((sum_odd + num))
    fi
done

echo "Sum of even numbers is: $sum_even"
echo "Sum of odd numbers is: $sum_odd"
