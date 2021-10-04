#!/bin/bash
while read line
do
    filename=$(echo 'entries/abaev_'$(./make-id.sh $line)'.xml')
    ./gen-stub.sh $line > $filename
done < entrylist.txt
