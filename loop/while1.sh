#!/bin/bash

# while文は、条件が真であり続ける限り処理をループする

# 標準入力から入力が無くなるまで read コマンドで1行ずつ読み込み処理する
while read line
do
  echo $line
done
