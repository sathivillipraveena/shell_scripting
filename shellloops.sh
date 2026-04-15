#!/bin/bash
echo  "enter the number"
read num
if [ $((num % 5)) -eq 0 ]; then
    echo " number $num is divisible by 5 "
else
    echo "number $num is not divisible by 5"
fi
