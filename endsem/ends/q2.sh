#!/bin/bash
while [ true ] 
do
echo "Enter the first integer :"
echo "(Enter 'exit' to stop)"
read int1
if [ $int1 = "exit" ]
then
exit
fi
echo "Enter the second integer :"
echo "(Enter 'exit' to stop)"
read int2
if [ $int2 = "exit" ]
then
exit
fi
intsum=$((int1+int2))
echo "The sum of the provided integers is $intsum"
done
