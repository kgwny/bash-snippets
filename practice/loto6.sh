#!/bin/bash

# 事前に下記コマンドを実行すること
# brew install coreutils

min=1
max=43
limit=6

# 最小値から最大値の中から指定個数だけ取り出す
gshuf -i$min-$max -n $limit | sort -n
