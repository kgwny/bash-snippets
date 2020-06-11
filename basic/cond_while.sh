#!/bin/bash

# 初期値:0
v=0

# 1ずつ加算していき10で終了する
while [ $v -lt 10 ]
do
    v=$((v+1))
    echo $v
done
