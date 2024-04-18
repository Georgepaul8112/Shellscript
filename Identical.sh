#!/bin/bash
#George Paul 23mca029
# Check if two filenames are provided as arguments
if [ $# -eq 2 ]; then
    file1="$1"
    file2="$2"

    # Check if both files exist
    if [ -f "$file1" ] && [ -f "$file2" ]; then
        # Compare the contents of the files
        if cmp -s "$file1" "$file2"; then
            echo "The contents of $file1 and $file2 are the same."
            echo "Deleting $file2..."
            rm "$file2"
        else
            echo "The contents of $file1 and $file2 are different."
        fi
    else
        echo "Error: One or both files do not exist."
    fi
else
    echo "Usage: $0 <file1> <file2>"
fi
