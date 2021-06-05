#!/bin/bash

# 標準出力
echo "Hello World"

# 標準出力＋改行しない
echo -n "hoge"

echo -n "ika"

echo -n "tako"

# 何も出力しない
echo

# printf は %d や %s などのフォーマットを用いて文字列置換を行い標準出力する
printf "name=%s/age=%d/job=%s\n" "TaroYamada" 18 "student" 
