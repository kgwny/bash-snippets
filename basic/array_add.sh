#!/bin/bash

# array
declare -a array=()

# 配列の先頭に値を追加する
array=("lead" "${array[@]}")

# 配列の末尾に値を追加する
array=("${array[@]}" "end")

# 配列のindexを指定して値を取り出して表示する
echo ${array[0]}
# lead
echo ${array[1]}
# end

# 配列全体を取り出して表示する
echo ${array[@]}
# lead end
