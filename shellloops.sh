#!/bin/bash
echo "enter the number between 1 to 10"
read num
if [ $num -le 10 ]; then
    for i in {1..10}
    do
        if [ $num -eq $i ]; then
        echo "$num is in the range of $i"
        fi
    done
else 
    echo "$num is not in the range please enter 1 to 10 only"
fi
