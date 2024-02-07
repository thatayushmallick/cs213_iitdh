#!/bin/bash
a=$(echo $(ls -l -t $1 | grep '^-' -m1) | cut -d' ' -f9)
echo "The newest file in "$1" is: "$a
