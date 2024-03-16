#!/bin/bash
#George Paul 23mca029

echo "Enter a number:"
read number

# Initialize the factorial to 1
factorial=1

# Use a for loop to calculate the factorial
for ((i=1; i<=number; i++)); do
    factorial=$((factorial * i))
done

echo "Factorial of $number is: $factorial"
