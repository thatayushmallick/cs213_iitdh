#!/bin/bash
a=$(wc -l < $1)
i=0
while [ $i -le $a ]
do
	f=$(head -$i $1 | tail -1)
	c=$(awk '{print substr($1,1,1)}' <<< $f ) 
	d=$(awk '{print substr($1,3,3)}' <<< $f )
	if [[ "$c" == "$d" ]]
	then
		echo "$f"
	fi
	i=$(( $i+1 ))
done
