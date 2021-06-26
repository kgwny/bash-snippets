#!/bin/bash

APP_NAME=$1

if [[ $APP_NAME = `` ]]; then
  echo "USAGE: `dirname $0`/open.sh [application name]"
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

# clasp open
cd main/$APP_NAME && clasp open
