#!/bin/bash

# 特殊変数
echo "\$0 シェルスクリプト名: $0"
echo "\$1 第一引数: $1"
echo "\$2 第二引数: $2"
echo "\$# 引数の個数: $#"
echo "\$_ :$_"

echo "\"\$*\": \"$*\""
echo "\"\$@\": \"$@\""
echo "\$? :$?"
echo "\$$ :$$"
echo "\$! :$!"
echo "\$- :$-"

# $0 : シェルスクリプト名
# $1 ~ $9 : 第N引数
# $# : シェルスクリプトに与えた引数の個数
# $* : すべての引数をまとめて処理
# $@ : すべての引数を個別に処理
# $? : 直前に実行したコマンドの終了値（0:成功 1:失敗）
# $$ : シェルスクリプトのプロセスID
# $! : 最後に実行したバックグラウンドプロセスID
# $- : シェルの実行オプション (/bin/bash -opt)
# $_ : 最後に実行したコマンドの最後の引数
