#!/bin/bash

if [ $# -ne 2 ]; then
    echo "one of two arguments was not provided"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
    echo "filesdir is not a directory"
    exit 1
fi 

num_files=$(find "$filesdir" -type f | wc -l)

num_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_lines"