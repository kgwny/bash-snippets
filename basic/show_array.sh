#!/bin/bash

# array
declare -a array=("a" "b" "c")
echo ${array[@]}
# a b c

# ダブルクォートで囲っていても同じ
echo "${array[@]}"
# a b c

i=0
for e in ${array[@]}; do
    echo "array[$i] = ${e}"
    let i++
done

# array[0] = a
# array[1] = b
# array[2] = c

# Javaライクなfor文
for ((i = 0; i < ${#array[@]}; i++)) {
    echo "array[$i] = ${array[i]}"
}

# array[0] = a
# array[1] = b
# array[2] = c
