#!/bin/bash
num1=10
num2=100
echo " $num1 $num2"
if [ $((num1 % 2)) -eq 0 ]; then
    echo "num1 is even"
else
    echo "num1 is odd"
fi