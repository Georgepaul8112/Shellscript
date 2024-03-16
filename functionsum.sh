#!/bin/bash
#George Paul 23mca029

# Function to calculate the sum of digits
sum_of_digits() {
    local num=$1
    local sum=0

    while [ $num -gt 0 ]; do
        digit=$((num % 10))
        sum=$((sum + digit))
        num=$((num / 10))
    done

    echo $sum
}

echo "Enter a number:"
read number

# Call the function and store the result
result=$(sum_of_digits $number)

echo "Sum of digits of the number $number is: $result"
