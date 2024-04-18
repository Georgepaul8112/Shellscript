#!/bin/bash
#George Paul

# Outer loop iterates through 1, 2, and 3
for i in 1 2 3
do
  # Middle loop iterates through 1, 2, and 3
  for j in 1 2 3
  do
    # Inner loop iterates through 1, 2, and 3
    for k in 1 2 3
    do
      # Print the combination of the three values
      echo "$i$j$k"
    done
  done
done

