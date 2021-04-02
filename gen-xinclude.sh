#!/bin/bash
for f in entries/abaev_*.xml
do
    echo "<xi:include href='entries/${f##*/}' parse='xml'/>"
done
