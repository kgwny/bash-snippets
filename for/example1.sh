#!/bin/bash

# for 繰り返し条件
# do
#    # ...
# done

# for 繰り返し条件; do
#     # ...
# done

# for ((初期値; ループ条件; ループ時の処理)); do
#    # ...
# done

MAX=10

for ((i=0; i < $MAX; i++)); do
    echo $i
done
