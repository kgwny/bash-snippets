#!/bin/bash

# OFS:空白4つ、ORS:改行2つ (\n は改行)
echo 1:2/3:4 | awk -F'[:/]' -v 'OFS=    ' -v 'RS=/' -v 'ORS=\n\n' '{print $1,$2}'
# 1    2
# 
# 3    4
