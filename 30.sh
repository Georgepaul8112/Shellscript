#!/bin/bash
#George Paul
# Prompt the user for the file name
echo &quot;Enter the file name: &quot;
read file
# Check if the file exists
if [ ! -f &quot;$file&quot; ]; then
echo &quot;File not found.&quot;
exit 1
fi
# Convert the contents of the file to lowercase and replace all non-alphanumeric characters with spaces
contents=$(tr &#39;[:upper:]&#39; &#39;[:lower:]&#39; &lt; $file | sed &#39;s/[^a-z0-9]/ /g&#39;)
# Create an array of words from the file contents
words=($contents)
# Loop through the array of words and count their occurrences
declare -A count
for word in &quot;${words[@]}&quot;; do
if [ -n &quot;$word&quot; ]; then
((count[$word]++))
fi
done
# Print the unique words and their counts
echo &quot;Unique words in $file:&quot;
for word in &quot;${!count[@]}&quot;; do
echo &quot;$word: ${count[$word]}&quot;
done
