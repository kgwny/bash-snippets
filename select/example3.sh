#!/bin/bash

echo What kind of linux distribution do you use?

ans1="Debian"
ans2="Ubuntu"
ans3="LinuxMint"
ans4="CentOS"
ans5="fedora"

select ANS in "$ans1" "$ans2" "$ans3" "$ans4" "$ans5"
do
    if [ -z "$ANS" ]; then
        continue
    else
        break
    fi
done

echo You selected $REPLY\) $ANS
