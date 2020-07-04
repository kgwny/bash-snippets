#!/bin/bash

# 配列をカンマ区切りの文字列へ変換
fruit[0]=apple
fruit[1]=banana
fruit[2]=grape
for tmp in ${fruit[@]} ; do
    string=${string}${string:+,}${tmp}
done
echo $string

# カンマ区切りの文字列を配列へ変換
fruit_string="apple,banana,grape"
fruit_array=( $( echo ${fruit_string} | sed -e "s|,| |g" ) )
echo ${fruit_array[@]}
