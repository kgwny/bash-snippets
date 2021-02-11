#!/bin/bash

# bq queryコマンドによりBigQueryでクエリを実行するサンプル

usage_exit() {
    echo "Usage: $0 [-f fromDate(yyyy-MM-dd)] [-t toDate(yyyy-MM-dd)]" 1>&2
    exit 1
}

while getopts f:t: OPT
do
    case $OPT in
        f)  fromDate=$OPTARG
            ;;
        t)  toDate=$OPTARG
            ;;
        \?) usage_exit
            ;;
    esac
done

shift $((OPTIND - 1))

if [[ "${fromDate}" == "" ]]; then
    usage_exit;
fi

if [[ "${toDate}" == "" ]]; then
    usage_exit;
fi

bq query \
--format==csv \
--max_rows=10000 \
--use_legacy_sql=false \
--parameter=fromDate::${fromDate} \
--parameter=toDate::${toDate} \
< query/test_query.sql > result/test_query.csv
