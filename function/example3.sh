#!/bin/bash

# 引数は $0, $1, $2, ... $*, $@, $# で参照する

myfunc() {
  for i in "$@"
  do
    echo "[$i]"
  done
}

myfunc args1 args2 args3
