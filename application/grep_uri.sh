#!/bin/bash

# テキストからURLを抽出する
grep -Eo "http(s?)://(\w|:|%|#|\$|&|\?|\(|\)|~|\.|=|\+|\-|/)+" tmp/input.txt > tmp/output.txt
