#!/bin/bash

FILE=./ping.txt

echo 'start'
while :
do
  while read LINE
  do
    if [[ ! "$LINE" =~ ^\' ]] ;
      ping $LINE >> /dev/null
      if [ $? -eq 0 ]
      then
        echo $(date +%H:%M:%S:%N) "OK" $LINE
        sleep 1
      else
        result=`ping $LINE | grep "Time to live exceeded"`
        if [ ${#result} -gt 0 ]
        then
            echo $(date +%H:%M:%S:%N) "TTL exceeded" $LINE
        else
            echo $(date +%H:%M:%S:%N) "NG" $LINE
        fi
      fi
    fi
  done < $FILE
#break
done
echo 'end'
