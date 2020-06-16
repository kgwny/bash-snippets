#!/bin/bash

# array
declare -a array=("a" "b" "c")
echo ${array[@]}
# a b c

# 配列の先頭にある要素を削除
array=(${array[@]:1})
echo ${array[@]}
# b c

# 配列の末尾にある要素を削除
declare -i num=${#array[@]}-1
array=(${array[@]:0:$num})
echo ${array[@]}
# b

array=("a" "b" "c")

# ワンライナーでの表現：配列の末尾にある要素を削除
array=(${array[@]:0:(${#array[@]}-1)})
echo ${array[@]}
