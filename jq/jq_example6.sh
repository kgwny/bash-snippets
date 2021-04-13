#!/bin/bash

TARGET=$1
TMP=$(<tmp6.json)
SCRIPT_ID=`echo $TMP | jq .$TARGET`

echo '{"scriptId":'$SCRIPT_ID',"rootDir":"./dist"}'
