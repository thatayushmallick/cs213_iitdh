#!/bin/bash
grep y -v addr.txt | cut -d' ' -f1
