#!/bin/bash

# hoge.csvの中身を出力する
awk '{ print $0 }' hoge1.csv
# column1,column2,column3
# a1,b1,c1
# a2,b2,c2
# a3,b3,c3

echo ''
echo '# 1列目のみ抽出'
awk -F'[,]' '{print $1}' hoge1.csv
# # 1列目のみ抽出
# column1
# a1
# a2
# a3
