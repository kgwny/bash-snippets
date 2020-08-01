#!/bin/bash

#let script exit if a command fails
set -o errexit 

#let script exit if an unsed variable is used
set -o nounset

echo "Names without double quotes" 
echo
names="hoge fuga piyo"
for name in $names; do
    echo "$name"
done
echo

echo "Names with double quotes" 
echo
for name in "$names"; do
    echo "$name"
done
echo

exit 0
