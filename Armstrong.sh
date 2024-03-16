#!/bin/bash
#George Paul
#23mca029
echo "Enter an integer:"
read num

# Store the original number for later comparison
original_num=$num

# Initialize variables for the number of digits and the sum of cubes
num_digits=$(echo -n $num | wc -c)
sum=0

# Loop through each digit and calculate the sum of cubes
while [ $num -gt 0 ]; do
    digit=$((num % 10))
    sum=$((sum + digit ** num_digits))
    num=$((num / 10))
done

# Check if the sum of cubes is equal to the original number
if [ $sum -eq $original_num ]; then
    echo "$original_num is an Armstrong number."
else
    echo "$original_num is not an Armstrong number."
fi
