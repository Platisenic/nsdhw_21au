#!/usr/bin/bash

if [ -z  $1 ]; then
    echo "missing file name"
elif [[ $# > 1 ]]; then
    echo "only one argument is allowed"
else
    if [ -f $1 ]; then
        lines=$(wc -l < $1)
        echo "$lines lines in $1"
    else
        echo "$1 not found"
    fi
fi
