#!/bin/bash

# until文

i=1
until [ $i -eq 10 ]
do
  echo $i
  i=`expr $i + 1`
done
