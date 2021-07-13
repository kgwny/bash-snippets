#!/bin/sh

DRINK="coffee"
DRINK_JP=""

case "$DRINK" in
    "beer") DRINK_JP="ビール"
    ;;
    "juice") DRINK_JP="ジュース"
    ;;
    "coffee") DRINK_JP="コーヒー"
    ;;
esac

echo $DRINK_JP"飲みたい！！"
