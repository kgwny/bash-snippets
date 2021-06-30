#!/bin/sh
echo "$#"
echo "[$1] [$2] [$3]"
echo "[$*]"
echo "[$@]"

# $ sh example2.sh foo bar qux
# 3
# [foo] [bar] [qux]
# [foo bar qux]
# [foo bar qux]
