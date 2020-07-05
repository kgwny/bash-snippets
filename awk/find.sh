#!/bin/sh

# hoge.txt の中から bar という文字列を含む行を抽出する
awk '/bar/ { print $0 }' hoge.txt

# 行番号を付与する
awk '/bar/ { print NR,$0 }' hoge.txt
