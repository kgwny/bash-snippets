#!/bin/bash

# case文
# case文は、文字列のパターンによって処理を振り分けます。パターンには * や ? のワイルドカードも使用できます。

FILENAME=$1

case $FILENAME in
  *.txt)  echo "This is text file." ;;
  *.html) echo "This is html file." ;;
  *)      echo "This is unknown file." ;;
esac
