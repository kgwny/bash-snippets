# 行の始めのx語だけスキップする

function skip {
    n=$(($1 + 1))
    cut -d' ' -f$n-
}

# $ docker images

# 一覧表が取得される
# 列を抽出するコマンドをつかう

function col {
    awk -v col=$1 '{print $col}'
}

# $ docker images | col 3

# image列だけになる

# $ docker images | col 3 | xargs

# 列が行になる（縦持ちが横持ちになる）

# $ docker images | col 3 | xargs | skip 1

# 行見出しのimageが消える

# 完成形
# $ docker rmi $(docker images | col 3 | xargs | skip 1)
