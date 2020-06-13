#!/bin/bash

# variable
var="variable"
echo $var

# 空文字で初期化
var=""
echo $var

# 本来の変数初期化
unset var
echo $var
