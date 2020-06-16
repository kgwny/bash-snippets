#!/bin/bash

# 文字列連結
var="hoge"
var="$var ika"
echo $var

# 文字列連結
var="hoge"
var+=" "
var+="ika"
echo $var

# 文字列連結
hoge="hoge"
fuga="fuga"
echo $hoge $fuga
echo "hoge" "fuga"
