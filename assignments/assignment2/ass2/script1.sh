#!/bin/bash
p=0
q=1
while [ $p -le 500 ]
do
echo "$p"
r=$((p+q))
p=$q
q=$r
done >> fib.txt
i=2
while [ $i -le 500 ]
do
j=2
k=1
while [ $j -lt $i ]
do
l=$(( $i % $j ))
if [ $l -eq 0 ]
then
k=0
break
fi
j=$(( $j+1 ))
done
if [ $k -eq 1 ]
then
echo "$i"
fi
i=$(( $i+1 ))
done >> prime.txt
m=$(diff -u prime.txt fib.txt | grep -v '+' | grep -v '-'| wc -l)
n=$(cat fib.txt| wc -l)
p=$((m * 100 / n))
echo "Perchantage of match: $p%"
