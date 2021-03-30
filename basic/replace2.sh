#!/usr/bin/bash

# アンスコ除去
# 編集する文字列
hoge="/path/test_data_01"
echo "編集前"
echo ${hoge}
# /path/test_data_01

echo ${hoge//_/}
# /path/testdata01
