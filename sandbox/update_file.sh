#!/bin/bash

# ファイルに文字列を書き出す
echo 'test' > new.txt
cat new.txt

# ファイルを空っぽの状態に上書きする
echo -n >| new.txt
