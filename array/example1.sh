#!/bin/bash

# 配列
ARRAY=(item1 item2 item3 item4)
ARRAY[0]="ITEM1"
ARRAY[2]="ITEM3"

echo "ARRAY[0]: ${ARRAY[0]}"
# ARRAY[0]: ITEM1

echo "ARRAY[1]: ${ARRAY[1]}"
# ARRAY[1]: item2

# 全要素を参照する
echo "ARRAY[*]: ${ARRAY[*]}"
# ARRAY[*]: ITEM1 item2 ITEM3 item4

echo "ARRAY[@]: ${ARRAY[@]}"
# ARRAY[@]: ITEM1 item2 ITEM3 item4
