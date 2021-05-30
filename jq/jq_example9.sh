#!/bin/bash

ADD_NAME='key4'
ADD_ID='value4'

RESULT_JSON='tmp9.json'

# jqを実行します
cat tmp1.json | jq '.+ {"'$ADD_NAME'" : "'$ADD_ID'"}' \
> ${RESULT_JSON} && cat ${RESULT_JSON}
