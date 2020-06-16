#!/bin/bash

# 環境変数:IFS (Internal Field Separator)
# 区切り文字を設定する

declare -a array=("a" "b" "c")
echo "${array[*]}"
# a b c

# 区切り文字を改行に変更する
IFS=$'\n'
echo "${array[*]}"
# a
# b
# c
