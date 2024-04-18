#!/bin/bash
#George Paul 23mca029

# Function to generate Fibonacci series
fibonacci() {
    # Initialize the first two numbers in the series
    num1=0
    num2=1
    count=$1
    i=2

    # Print the first two numbers
    echo "Fibonacci series up to $count terms:"
    echo -n "$num1 $num2 "

    # Generate subsequent numbers in the series
    while [ $i -lt $count ]
    do
        # Calculate the next Fibonacci number
        next=$((num1 + num2))
        echo -n "$next "

        # Update the variables for the next iteration
        num1=$num2
        num2=$next
        i=$((i + 1))
    done
    echo # Print newline
}

# Check if the number of terms is provided as an argument
if [ $# -eq 1 ]; then
    fibonacci $1
else
    echo "Usage: $0 <number_of_terms>"
fi
