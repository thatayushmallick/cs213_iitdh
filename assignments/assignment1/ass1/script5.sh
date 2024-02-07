#!/bin/bash
echo "Files found: `ls -l $1 | grep '^-' | wc -l`"
echo "Folders found: `ls -l $1 | grep '^d' | wc -l`"
