#!/bin/bash

valid=true
count=0

while [ $valid ]
do
    echo $count
    if [ $count -eq 10 ]; then
        break
    fi
    ((count++))
done
