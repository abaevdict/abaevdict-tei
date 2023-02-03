#!/bin/sh
# Script to list last commits for all entries

FILES=`ls -A ./entries`
MAXLEN=0
IFS="$(printf "\n\b")"
for f in $FILES; do
    if [ ${#f} -gt $MAXLEN ]; then
        MAXLEN=${#f}
    fi
done
for f in $FILES; do
    str="$(git log -1 --pretty=format:"%C(green)%cr%Creset %x09 %C(cyan)%h%Creset %s %C(yellow)(%cn)%Creset" $f)"
    printf "%-${MAXLEN}s -- %s\n" "$f" "$str"
done
