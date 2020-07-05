#!/bin/bash

# 行番号の付与
echo 1:2/3:4 | awk '{print NR,$1}'
# 1 1:2/3:4

# echo 1,2,3,4,5,6,7,8 | awk -F'[,]' '{print NR,$0}'

# awk 'BEGIN {FS="n"; RS="ORS="-"} {print $1,$NF}' aaaa
