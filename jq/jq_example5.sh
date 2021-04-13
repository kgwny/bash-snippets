#!/bin/bash

cat weather.json | jq .coord

cat weather.json | jq .coord.lon

# 空白や特殊文字を使う場合はシングルウォートが必要
cat weather.json | jq '.coord.lon, .coord.lat'

# jsonを作り変えることもできる
cat weather.json | jq '{id: .id, name: .name}'

# 文字列をダブルクォー卜なしで出力
cat weather.json | jq -r '.name' 
