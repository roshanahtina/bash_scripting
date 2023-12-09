#!/bin/bash

NUMBER=(1,2,3,4,5,seven,"This is Eight")

echo "Display the Array values"
echo $NUMBER

echo "Echo the specific index value"
echo ${NUMBER[@]}

echo "Echo the specific 1 and 2 value"
echo ${NUMBER[@]:1:2}

echo "Echo the specific count the #NUMBER[@] value"
echo ${#NUMBER[@]}

echo "Echo the specific count the !NUMBER[@] value"
echo ${!NUMBER[@]}
