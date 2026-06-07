#!/bin/bash
count=1

while [ $count -le 5 ]
do
    echo "Iteration number: $count"
    ((count++)) # Increments the counter by 1
done

file="color.sh"

while IFS= read -r line
do
    echo "Processing: $line"
done < "$file" # bash searches for file which is color.sh and reads each line in the file 
