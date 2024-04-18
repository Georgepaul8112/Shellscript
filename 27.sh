#!/bin/bash
#George Paul

# Function to calculate a binomial coefficient (n choose k)
function binomial_coefficient() {
  local n=$1
  local k=$2
  local result=1

  # Calculate the binomial coefficient
  for ((i = 0; i < k; i++)); do
    result=$((result * (n - i) / (i + 1)))
  done

  # Return the result
  echo "$result"
}

# Number of rows for Pascal's triangle
rows=5

# Loop through each row
for ((n = 0; n < rows; n++)); do
  # Create an array to store the coefficients for the current row
  line=""

  # Calculate the coefficients for the current row
  for ((k = 0; k <= n; k++)); do
    # Calculate the binomial coefficient and add it to the line
    coefficient=$(binomial_coefficient $n $k)
    line+="$coefficient "

  done

  # Print the current row
  echo "$line"
done

