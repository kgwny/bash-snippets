#!/bin/bash

# Prepare the files necessary for developing a GAS application based on the template.

printf "Input new application name >> "; read APP_NAME

cd main

if [ -d ./$APP_NAME ]; then
  echo "ERROR: $APP_NAME is already exists."
  exit 1
fi

printf "Input new script id >> "; read SCRIPT_ID

# create new files
mkdir $APP_NAME && cd $APP_NAME && touch index.ts && touch const.ts
cp ../../bin/appsscript.json .

APPDEF_FILE='../../bin/appdef.json'
APPDEF_JSON=$(<$APPDEF_FILE)

# update appdef.json
echo $APPDEF_JSON | jq '.+ {"'$APP_NAME'" : "'$SCRIPT_ID'"}' > ${APPDEF_FILE} && cat ${APPDEF_FILE}

echo "SUCCESS: $APP_NAME is created."
