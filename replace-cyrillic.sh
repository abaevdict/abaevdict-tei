#! /bin/bash
source .venv/bin/activate
for f in entries/*.xml
do
    python replace-cyrillic.py $f
done
