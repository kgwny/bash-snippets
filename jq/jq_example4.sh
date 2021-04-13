#!/bin/bash

# cat tmp.json | jq .key1

# 配列の全要素を取り出す
cat tmp.json | jq '.tmp[]'     
