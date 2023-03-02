#!/bin/bash

# This script enumerates the current dictionary files, feds them to a python script that sorts them and outputs entrylist.txt with appropriate xinclude statements

for f in entries/*.xml; do
    echo $f
done | python ./ossetic-sort.py > entrylist.txt
