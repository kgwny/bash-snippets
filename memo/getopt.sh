#!/bin/bash

args=`getopt ad: "$@"`

if [ $? != 0 ]; then
    echo "Usage: $0 [-a] [-d dir]" 1>&2
    exit 1
fi

set -- $args

for OPT in "$@"
do
    case $OPT in
        -a) A_FLAG=1
            shift
            ;;
        -d) B_ARG=$2
            shift 2
            ;;
        --) shift
            break
            ;;
    esac
done
