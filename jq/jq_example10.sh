#!/bin/bash

jq --arg ssid abc --arg pass 123 '.connections[$ssid] = $pass' < tmp10.json
# {
#   "connections": {
#     "abc": "123"
#   }
# }