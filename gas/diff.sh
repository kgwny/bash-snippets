#!/bin/bash

# This tool is for comparing old and new when modifying GAS application.

APP_NAME=$1

if [[ $APP_NAME = `` ]]; then
  echo "USAGE: `dirname $0`/diff.sh [application name]"
  exit 1
fi

DEF=$(<`dirname $0`/appdef.json)
SCRIPT_ID=`echo $DEF | jq .$APP_NAME`

if [[ $SCRIPT_ID = null ]]; then
  echo `ERROR: target application does not exist.`
  exit 1
fi

if [ ! -d ./diff ]; then
  mkdir diff
fi

cd diff

if [ -d ./before ]; then
  rm -rf before
fi

if [ -d ./after ]; then
  rm -rf after
fi

# clone the current source code from GAS
clasp clone ${SCRIPT_ID//\"/} --rootDir './dist'
mv dist before

# copy the source code build after modification
cp -r ../main/$APP_NAME/dist after

vimdiff before/bundle.js after/bundle.js -c TOhtml -c 'w! result.html' -c 'qa!'
open result.html
