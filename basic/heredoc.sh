#!/bin/bash

# ヒアドキュメントで標準出力
cat << EOS
hoge
fuga
piyo
EOS

echo "以下のように、一行ずつechoするのと一緒"
echo "hoge"
echo "fuga"
echo "piyo"

# ヒアドキュメントを用いてファイル出力する
cat << EOF > test.txt
foo
bar
baz
EOF
