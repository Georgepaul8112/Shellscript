#!/bin/bash
#George Paul 23mca029

# Function to reverse a number
reverse_number() {
    local num=$1
    local reversed=0

    while [ $num -gt 0 ]; do
        digit=$((num % 10))
        reversed=$((reversed * 10 + digit))
        num=$((num / 10))
    done

    echo $reversed
}

echo "Enter a number:"
read number

# Call the function and store the result
result=$(reverse_number $number)

echo "Reverse of the number $number is: $result"

