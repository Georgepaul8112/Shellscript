#!/bin/bash
#George Paul
# Directory to search in
search_dir="."

# Word to search for
search_word="Linux"

# Count the occurrences of the word "Linux" in all .txt files recursively
count=$(grep -rio "$search_word" --include='*.txt' "$search_dir" | wc -l)

# Print the total count
echo "Total occurrences of the word \"$search_word\" in all .txt files (including subdirectories): $count"

