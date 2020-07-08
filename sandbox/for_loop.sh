#!/bin/bash

# 配列の要素でforループ１
items=(
    "foo"
    "bar"
    "baz"
)

for item in "${items[@]}" ; do
    echo "${item}"
done

# 配列の要素でforループ２
items[0]="hoge"
items[1]="ika"
items[2]="tako"

for item in "${items[@]}" ; do
    echo "${item}"
done

# counterによるforループ
for (( counter=10; counter>0; counter-- )) do
    echo "${counter}"
done

# 連番によるforループ
for i in {1..10} ; do
    echo ${i}
done

# 連番によるforループ
for i in `seq 1 10`; do
    echo ${i}
done
