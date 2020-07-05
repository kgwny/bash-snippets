#!/bin/bash

# RS: Record Separator （改行文字）
echo 1:2/3:4 | awk -F'[:]' -v 'RS=/' '{print $1}'
# 1
# 3

echo 1:2/3:4 | awk -F'[:]' -v 'RS=/' '{print $1,$2}'
# 1 2
# 3 4

# フィールド区切り文字とレコード区切り文字で同じ文字がある場合、レコード区切り文字が優先されます
echo 1:2/3:4 | awk -F'[:/]' -v 'RS=/' '{print $1,$2}'
# 1 2
# 3 4
