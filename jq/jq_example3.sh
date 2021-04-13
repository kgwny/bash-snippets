#!/bin/bash

TEST=$(<tmp1.json)
echo $TEST | jq
