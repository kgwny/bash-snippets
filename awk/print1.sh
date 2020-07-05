#!/bin/bash

# 文字列を抽出するときの基本構文
# awk -F'[フィールド区切り文字(複数可能)]' -v '変数=xx' '{awkコマンド}' file

# 1列目を抽出する
echo 1 2 3 4 | awk '{print $1}'
# 1

# 2列目を抽出する
echo 1 2 3 4 | awk '{print $2}'
# 2

# 全列を抽出する
echo 1 2 3 4 | awk '{print $0}'
# 1 2 3 4

# 全列を抽出する
echo 1 2 3 4 | awk '{print}'
# 1 2 3 4
