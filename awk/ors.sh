#!/bin/bash

# ORS:Output Record Separator(出力のレコード区切り文字)
echo 1:2/3:4 | awk -F'[:/]' -v 'RS=/' -v 'ORS=hogehoge' '{print $1,$2}'
# 1 2hogehoge3 4
