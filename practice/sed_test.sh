#!/bin/bash

# ファイルの先頭に1行追加する macで実行する際は -i のあとに.bakを付与すること
sed -i .bak '1s/^/hogehoge/' temp.txt
