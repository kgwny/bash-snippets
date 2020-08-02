#!/bin/bash
#
# @(#) hoge.sh ver.1.0.0 2020.08.02
#
# Usage:
#   hoge.sh param1 param2
#     param1 - パラメータ1
#     param2 - パラメータ2
#
# Description:
#   hoge.shスクリプトの説明です.
#
###########################################################################

# インデントは半角スペース2つ
{
  touch hoge
  ls hoge
  rm hoge
}

hannin="yasu"

# if/thenは同一行に記述し、セミコロンの直後にスペースを入れること
if [ "$hannin" = "yasu" ]; then
  echo "hannin は yasu"
fi

total=0
# for/whileのdoとdoneの頭を揃える
echo forloop
for i in 1 2 3 4 5
do
  total=`expr $total + $i`
done

echo whileloop
while [ $total -lt 10 ]
do
  total=`expr $total + 1`
done

# 関数定義のfunctionは省略する
Hoge()
{
  echo "Hoge()が呼び出された"
  return 0
}

Hoge

cnt=11
# if 文を省略しない
if [ $cnt -eq 10 ]; then
  exit 0
fi

# ヒアドキュメントによる複数行の一括コメントアウト
: <<'#__COMMENT_OUT__'
echo "ヒアドキュメント内の処理は全て無効"
touch hoge
dummy=`touch fuga`
#__COMMENT_OUT__

# 変数の命名規則
# forループ用の変数は非定数なので小文字
for i in 1 2 3 4 5
do
  echo $i
done

# 可読性を考慮して無駄にループ処理を使用しないこと

# readコマンドを用いて処理を一時停止する
echo -e "Enter to continue...\c"
read dummy

# 定数はreadonly宣言を付与し大文字で命名する
readonly MAX_COUNT=10
readonly FILENAME="text.txt"

# ディレクトリ名
readonly LOG_DIRNAME="tmp"

# フルパス指定ディレクトリ名
readonly LOG_DIR="${LOG_DIRNAME}"

# ファイル名
readonly LOG_FILENAME="log.dat"

# フルパス指定ファイル名
readonly LOG_FILE="../${LOG_DIR}/${LOG_FILENAME}"

# 連続した同一ファイルへのリダイレクトはグルーピングする
{
  echo "hoge"
  echo "fuga"
  echo "foo"
  echo "bar"
} >>$LOG_FILE

# 関数の振る舞いを変数で変更する
Message()
{
  _SEPARATOR=${_SEPARATOR:-"-----"}

  echo "$1"
  echo "$_SEPARATOR"
  echo "$2"

  return 0
}
