#!/bin/bash

# ファイルから読み込んで配列へ設定する
array=()

while read line
do
  array+=($line)
done < tmp5.txt

echo "${array[@]}"

echo "${array[0]}"
echo "${array[1]}"
echo "${array[2]}"
