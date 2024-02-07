#!/bin/bash
echo "Enter string 1 :"
read string1
echo "Enter string 2 :"
read string2
if [ "$string1" = "$string2" ]
then
echo "The provided strings are equal."
else
echo "The provided strings are not equal."
fi
