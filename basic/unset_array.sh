#!/bin/bash

array=("a" "b" "c")

# 特定の要素を削除
unset array[1]
echo ${#array[@]}
echo ${array[@]}
# a c

echo ${array[0]}
# a
echo ${array[1]}
# 空文字
echo ${array[2]}
# c

# 配列の要素を全削除する
unset array[@]
echo "${array[@]}"
# 空
echo "${#array[@]}"
# 0

# 配列に値を設定する
array[1]="x"
echo "${array[@]}"
# x
echo "${#array[@]}"
# 1
