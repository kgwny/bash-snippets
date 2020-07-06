#!/usr/bin/env bash

readonly program=$(basename $0)
readonly args=(one two)

# IFS: Internal Filed Separator
function print_usage_and_exit() {
  echo >&2 "Usage: ${program} $(IFS=' '; echo ${args[*]^^})"
  exit 1
}

if [ $# -ne ${#args[@]} ]; then
  print_usage_and_exit
fi

for arg in ${args[@]}; do
  eval "readonly ${arg}=$1"
  shift
done

echo "one: ${one}"
echo "two: ${two}"
