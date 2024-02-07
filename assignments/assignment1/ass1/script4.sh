#!/bin/bash
cd $1
for file in `ls | grep .txt`
do
mv $file $file.new
done
