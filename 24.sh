#!/bin/bash
#George Paul

# Loop through all files in the current directory
for file in *
do
  # Check if the file is a regular file and does not have execute permission
  if [[ -f "$file" && ! -x "$file" ]]; then
    # Make the file executable
    chmod +x "$file"
    echo "Made '$file' executable."
  fi
done

