#!/bin/bash
count=1

while [ $count -le 5 ]
do
    echo "Iteration number: $count"
    ((count++)) # Increments the counter by 1
done
