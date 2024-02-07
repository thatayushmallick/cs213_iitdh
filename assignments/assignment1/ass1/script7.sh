#!/bin/bash
echo "Enter your password"
read p
if [ $(wc -m <<< $p) -le 8 ];
then
echo "Weak Password -> Password length should have at least 8 characters."
else
grep -q [0-9] <<< $p
num=$?
grep -q [A-Z] <<< $p
uc=$?
grep -q [a-z] <<< $p
lc=$?
if [ $num -eq 1 ];
then
echo "Weak Password -> Should use numbers in your password."
elif [ $uc -eq 1 ];
then
echo "Weak Password -> Should include a capital case letter."
elif [ $lc -eq 1 ];
then
echo "Weak Password -> Should include a lower case letter."
else
echo "Strong Password"
fi
fi
