#!/bin/bash

number=1
string="abc"

# JSON作成にはヒアドキュメントを使う
JSON=$(cat << EOS
{
  "number": ${number},
  "string": "${string}"
}
EOS
)

echo "$JSON"
# => {
#      "number": 1,
#      "string": "abc"
#    }

# JSON解析にはjqを使う 
echo $JSON | jq '.number'
# => 1  

# -r: string型の"を除去する
echo $JSON | jq -r '.string'
# => abc
