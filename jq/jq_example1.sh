#!/bin/bash

# $ brew install jq

var=bar
echo '{"foo" : "'$var'"}' | jq
{
  "foo": "bar"
}
