#!/bin/bash

# ファイルからテキストを抽出し、'#'で始まるコメント行を削除する
sed '/^#/d' hoge.txt