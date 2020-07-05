#!/bin/bash

# 先頭が#で始まる行と空行を削除する
cat hoge.txt | grep -v '^#' | sed '/^$/d'
