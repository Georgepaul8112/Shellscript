#!/bin/bash
#George Paul 23mca029
echo "Enter a number:"
read number

# Use modulo to extract digits
while [ $number -gt 0 ]; do
    digit=$((number % 10))

    if [ -z $smallest_digit ] || [ $digit -lt $smallest_digit ]; then
        smallest_digit=$digit
    fi

    number=$((number / 10))
done

echo "Smallest digit in the number is: $smallest_digit"
