#!/bin/bash

var="hoge"

if [ "$var" = "hoge" ]; then
    echo "var is hoge"
fi

if [ ! "$var" = "ika" ]; then
    echo "var is not ika"
fi

if [ "$var" = "foo" ]; then
    echo "var is foo"
elif [ "$var" = "bar" ]; then
    echo "var is bar"
elif [ "$var" = "baz" ]; then
    echo "var is baz"
else
    echo "var is unknown"
fi
