#!/bin/bash

usage_exit() {
    echo "Usage: $0 [-a] [-d dir] item ..." 1>&2
    exit 1
}

while getopts ad:h OPT
do
    case $OPT in
        a)  FLAG_A=1
            ;;
        d)  VALUE_D=$OPTARG
            ;;
        h)  usage_exit
            ;;
        \?) usage_exit
            ;;
    esac
done

shift $((OPTIND - 1))
