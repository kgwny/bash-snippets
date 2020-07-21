#!/bin/bash

# usage:
# sh remove_duplicates.sh [file]

echo "remove duplicates result (case sensitive)"
target=$1
cat $1 | sort | uniq

echo "remove duplicates result"
target=$1
cat $1 | sort -f | uniq -i

exit
