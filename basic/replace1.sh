#!/usr/bin/bash

# 編集する文字列
VAR1="/path/test.txt.data"
echo "編集前"
echo "/path/test.txt.data"

# 文字列を編集する
echo "編集後"
echo ${VAR1#*/}
echo ${VAR1##*/}
echo ${VAR1%.*}
echo ${VAR1%%.*}
echo 

# 編集する文字列
VAR2="aaa bbb ccc aaa bbb ccc"
echo "編集前"
echo "aaa bbb ccc aaa bbb ccc"

# 置換した文字列を表示
echo "編集後"
echo ${VAR2/aaa/ZZZ}
echo ${VAR2//aaa/ZZZ}
