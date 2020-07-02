#!/bin/bash

# 複数ファイルに対して文字列の検索と置換を行う(OSXの場合)
find . -type f -name '*.txt' -exec sed -i '' s/this/that/g {} +

# ファイル内のthisをthatに変換する

# .bashrcへ追加すると便利なコード
# sr 置換前の文字列 置換後の文字列
function sr {
    find . -type f -exec sed -i '' s/$1/$2/g {} +
}
