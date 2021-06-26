#!/bin/bash

APP_NAME=$1

if [[ $APP_NAME = `` ]]; then
  echo "USAGE: `dirname $0`/deploy.sh [application name]"
  exit 1
fi

DEF=$(<`dirname $0`/appdef.json)
SCRIPT_ID=`echo $DEF | jq .$APP_NAME`

if [[ $SCRIPT_ID = null ]]; then
  echo 'ERROR: target application does not exist.'
  exit 1
fi

# update .clasp.json
echo '{"scriptId":'$SCRIPT_ID',"rootDir":"./dist"}' > .clasp.json

# clasp push & deploy with comment
cd main/$APP_NAME
MESSAGE="[`date "+%y-%m-%d %H:%M:%S"`] '`git log --no-merges -1 --oneline | cut -b 9-`' by `whoami`"
clasp push
clasp deploy -d "${MESSAGE}"

echo "SUCCESS: $APP_NAME has pushed and deployed."
