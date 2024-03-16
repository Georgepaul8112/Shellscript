#!/bin/bash
#George Paul
#23mca029
echo "Enter an integer:"
read num

# Check if the number is less than 2 (not a prime number)
if [ "$num" -lt 2 ]; then
    echo "$num is not a prime number."
    exit
fi

# Initialize a variable to track whether the number is prime
is_prime=true

# Loop to check for factors from 2 to the square root of the number
for ((i=2; i*i<=num; i++)); do
    if [ $((num % i)) -eq 0 ]; then
        is_prime=false
        break
    fi
done

# Display the result
if $is_prime; then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi
