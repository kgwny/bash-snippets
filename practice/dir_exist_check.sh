#!bin/bash

DIFF_DIR=./tmp

# 存在しない場合はディレクトリ作成
if [ ! -d $DIFF_DIR ]; then
  mkdir $DIFF_DIR
fi

# ディレクトリの中になにかある場合は削除をうながす
if [ -n "$(ls -A $DIFF_DIR)" ]; then
  echo "出力先にファイルが存在します。削除してください。=> $DIFF_DIR"
  exit 1
fi
