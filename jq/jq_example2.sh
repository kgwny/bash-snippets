#!/bin/bash

# $ brew install jq
# ヒアドキュメントを使うパターン
var=bar
cat << EOS | jq
{
  "foo": "${var}"
}
EOS
