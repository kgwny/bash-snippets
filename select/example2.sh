#!/bin/bash

PS3="select number. if enter 'q' for exit >> "
menu="foo bar baz"
item=""

select item in $menu
do
    if [ "${REPLY}" = "q" ]; then
        echo "exit."
        exit 0
    fi

    if [ -n "${item}" ]; then
        break
    else
        echo "invalid selection."
    fi
done

echo "You selected '${REPLY}'. The value is '${item}'."
