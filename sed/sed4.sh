#!/bin/bash

# hoge1.txt の 2 行目から 4 行目までを削除し、 hogex.txt へ保存する
sed '2,4d' hoge1.txt > hogex.txt

cat hogex.txt
