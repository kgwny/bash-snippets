#!/bin/bash

echo $(echo "0123456789abcdefg" | cut -b $(echo "11"))
# a

i=1; i=$( expr ++$i ); echo "$i"
# ++1

i=1; i=$((++i)); echo "$i"
# 2
