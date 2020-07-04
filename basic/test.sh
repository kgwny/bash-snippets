#!/bin/sh

# 標準入力に q が入力されたら quit を表示して終わり
read input

if [ $input = 'q' ]; then
    echo quit
fi
