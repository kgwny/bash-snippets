#!/bin/bash

cat tmp.csv
# aaa,1234567890
# bbb,2233445566
# ccc,9999999999

cat tmp.csv | awk 'BEGIN {FS=", ";OFS=","} {print $1}'
# aaa
# bbb
# ccc

cat tmp.csv | awk 'BEGIN {FS=", ";OFS=","} {print $2}'
# 1234567890
# 2233445566
# 9999999999
