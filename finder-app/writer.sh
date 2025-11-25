#!/bin/sh

if [ $# -lt 2 ]; then
    printf "Usage: $0 <writefile> <writestr>\n"
    exit 1
fi

mkdir -p $(dirname $1) 2> /dev/null && echo $2 > $1

if [ $? -ne 0 ]; then
    printf "[ERROR] $1: Cannot create file!\n"
    exit 1
fi