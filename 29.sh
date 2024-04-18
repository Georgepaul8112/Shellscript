#!/bin/bash
#George Paul

# Function to reverse a string
reverse_string() {
    local str=$1
    local len=${#str}
    local reversed=""

    # Reverse the string
    for ((i = len - 1; i >= 0; i--)); do
        reversed+="${str:i:1}"
    done

    # Return the reversed string
    echo "$reversed"
}

# Main script
# Read a string from the user
echo -n "Enter a string: "
read input_string

# Reverse the input string using the function
reversed_string=$(reverse_string "$input_string")

# Check if the original string is equal to the reversed string
if [ "$input_string" == "$reversed_string" ]; then
    echo "The string '$input_string' is a palindrome."
else
    echo "The string '$input_string' is not a palindrome."
fi

