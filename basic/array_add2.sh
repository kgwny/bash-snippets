#!/bin/bash

# array要素追加
array=("hoge" "ika")
array=(${array[@]} "tako")
echo ${array[@]}

# array要素追加
array=("hoge" "ika")
array+=("tako")
echo ${array[@]}
