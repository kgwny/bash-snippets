#!/bin/bash

# パスからファイル名を抽出する
path='/usr/local/bin/hoge.txt'
result=`basename ${path} .txt`
echo $result
