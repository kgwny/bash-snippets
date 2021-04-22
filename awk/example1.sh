#!/bin/bash

cat tmp.csv
# aaa,1234567890
# bbb,2233445566
# ccc,9999999999

cat tmp.csv | awk 'BEGIN {FS=", ";OFS=","} {print $1}'
# aaa
# bbb
# ccc

cat tmp.csv | awk 'BEGIN {FS=", ";OFS=","} {print $2}'
# 1234567890
# 2233445566
# 9999999999

cat tmp.csv | awk 'BEGIN {FS=", ";OFS=","; print "開始"} {print $2,$1} END {print "終了"}'
# 開始
# 1234567890,aaa
# 2233445566,bbb
# 9999999999,ccc
# 終了

# メモ
# BEGIN:最初の行を読み込む前に実行
# END:最後の行を読み込んだ後に実行
# FS:Field Separator 読み込み時の区切り文字
# OFS:Output Field Separator 出力時の区切り文字
