#!/bin/bash

# リダイレクションの使用
# ">" や ">>" を用いることにより、入力元や出力先を変更する
# 出力結果をファイルに書き込むときにつかう

# 一行のみ書き出す
echo 'test' > hoge.txt
cat hoge.txt

# 追記
echo 'hoge' >> hoge.txt
cat hoge.txt
