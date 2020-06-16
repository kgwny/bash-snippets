#!/bin/bash

# array
declare -a array=("a" "b" "c")
echo ${array[@]}
# a b c

# for loop で要素毎に値を取り出して表示する
for var in "${array[@]}"
do
    echo $var
done
# a
# b
# c
