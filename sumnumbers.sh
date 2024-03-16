#!/bin/bash
#George paul 23mca029
sum=0
for ((num=50; num<=100; num++)); do
    # Check if the number is divisible by 3 and not divisible by 5
    if [ $((num % 3)) -eq 0 ] && [ $((num % 5)) -ne 0 ]; then
        sum=$((sum + num))
    fi
done

echo "Sum of numbers between 50 and 100, divisible by 3 and not divisible by 5 is: $sum"

