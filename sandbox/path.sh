#!/bin/bash
fpath='/a/b/c.d.e'

# ファイル名を取り出す（拡張子あり）
fname_ext="${fpath##*/}"
echo $fname_ext
# c.d.e

# ファイル名を取り出す（拡張子なし）
fname="${fname_ext%.*}"
echo $fname
# c.d

# 拡張子を取り出す
fext="${fpath##*.}"
echo $fext
# e

# ディレクトリを取り出す
fdir="${fpath%/*}"
echo $fdir
# /a/b

# 拡張子を変更する
echo "${fpath%.*}.x"
# /a/b/c.d.x
