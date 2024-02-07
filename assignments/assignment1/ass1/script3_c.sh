#!/bin/bash
awk 'NF <=2 { print $1, $2 }' addr.txt
