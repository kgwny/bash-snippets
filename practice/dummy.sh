#!/bin/bash

str="dummy"

cat <<'__EOT__' >temp.$$
hoge hoge
fuga fuga
foo foo
bar bar
__EOT__

cat temp.$$ | while read line
do
  str="$line"
done

rm -f temp.$$

echo $str
