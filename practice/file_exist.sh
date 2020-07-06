#!/bin/bash

# hoge.txt 生成
touch hoge.txt

# -e は存在確認の意
if [ -e ./hoge.txt ]; then
    echo "hoge.txt is exist."
else
    echo "hoge.txt is not exist."
fi

# hoge.txt 削除
rm hoge.txt

exit

# if文
if [条件式]; then
    処理
fi

# if〜else文
if [条件式]; then
    処理1
else
    処理2
fi

# if〜elif〜else文
if [条件式1]; then
    処理1
elif [条件式2]; then
    処理2
else
    処理3
fi
