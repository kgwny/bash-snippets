#!/bin/bash

# jsonファイル読み込み
TEST=$(<tmp1.json)
echo $TEST | jq

# jsonを読み込み後に整形してファイル出力
echo $TEST | jq . > tmp99.json
