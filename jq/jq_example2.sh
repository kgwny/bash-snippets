#!/bin/bash

# $ brew install jq

var=bar
cat << EOS | jq
{
  "foo": "${var}"
}
EOS
