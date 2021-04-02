#!/bin/bash
for f in $(ls -1a entries/abaev_*.xml | ./ossetic-sort.py)
do
    echo "<xi:include href='entries/${f##*/}' parse='xml'/>"
done
