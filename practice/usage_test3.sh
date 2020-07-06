#!/usr/bin/env bash

readonly program=$(basename $0)

function print_usage_and_exit() {
  echo >&2 "Usage: ${program} one two"
  exit 1
}

# 引数が2つではない場合
if [ $# -ne 2 ]; then
  print_usage_and_exit
fi

readonly one=$1
readonly two=$2

echo "one: ${one}"
echo "two: ${two}"
