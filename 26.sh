#!/bin/bash
#George Paul

# Define the starting number, ending number, and step (increment)
start=1
end=10
step=1

# Loop through the range from start to end, in steps of the specified size
for ((i = start; i <= end; i += step))
do
  # Print the current number
  echo "$i"
done

