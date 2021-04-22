#!/bin/bash

# テキストからURLを抽出する
grep -Eo "http(s?)://(\w|:|%|#|\$|&|\?|\(|\)|~|\.|=|\+|\-|/)+" tmp/input.txt | grep -e "qiita" > tmp/output.txt
