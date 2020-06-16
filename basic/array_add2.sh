#!/bin/bash

# array要素追加
array=("hoge" "ika")
array=(${array[@]} "tako")
echo ${array[@]}
# hoge ika tako

# array要素追加
array=("hoge" "ika")
array+=("tako")
echo ${array[@]}
# hoge ika tako
