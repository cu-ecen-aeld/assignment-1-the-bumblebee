#!/bin/sh

if [ $# -lt 2 ]; then
    printf "Usage: $0 <filesdir> <searchstr>\n"
    exit 1
fi

dir=$1
str=$2

if [ ! -d "$dir" ]; then
    printf "[ERROR] '$dir': Directory does not exist!\n"
    exit 1
fi

n_files=$(find $dir -type f | wc -l)
n_matches=$(grep -r "$str" $dir | wc -l)

printf "The number of files are $n_files and the number of matching lines are $n_matches\n"