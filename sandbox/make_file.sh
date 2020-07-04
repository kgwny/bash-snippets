#!/bin/bash

# 以下のようなやり方がある
# $ touch empty.txt
# $ echo -n > empty.txt
# $ > empty.txt
# $ cat /dev/null > empty.txt
# $ cp /dev/null empty.txt
# $ :> empty.txt

touch empty.txt

# touchコマンド以外はファイルの重複があると、空の状態で上書きしてしまうので注意
