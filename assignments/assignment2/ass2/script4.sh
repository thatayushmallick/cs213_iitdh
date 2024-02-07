#!/bin/bash
a=$1
b=$2
c=$3
sed "${b},${c}d" "$a" | awk '1'
