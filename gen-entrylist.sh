#! /bin/bash
for f in entries/*.xml
do
    id='entry_'$(cut -d. -f 1 <<< $f | cut -d_ -f 2)
    echo "<xi:include href='"$f"' xpointer='"$id"' parse='xml'/>"
done
