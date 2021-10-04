#!/bin/bash
echo $1 | xargs | sed 's/ /_/g' | sed 's/ₒ/0/g' | sed 's/(/6/g' | sed 's/)/9/g' | sed 's/*/8/g' | sed 's/!/1/g' | sed 's/ᵆ/7/g'
