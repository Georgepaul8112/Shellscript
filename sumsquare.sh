#!/bin/bash
#George Paul 23mca029
echo "Enter a number:"
read number

sum=0

while [ $number -gt 0 ]; do
    digit=$((number % 10))
    square=$((digit * digit))
    sum=$((sum + square))
    number=$((number / 10))
done

echo "Sum of squares of individual digits is: $sum"
