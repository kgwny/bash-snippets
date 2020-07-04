#!/bin/bash

cat << 'EOF' > _dotest.sh
echo $0
echo $BASH_SOURCE
echo #{BASH_SOURCE:-$0}
EOF
chmod 777 _dotest.sh

echo ""

echo "# ./_dotest.sh"
./_dotest.sh

echo "# bash ./_dotest.sh"
bash ./_dotest.sh

echo "# source ./_dotest.sh"
source ./_dotest.sh

# echo "# zsh _dotest"
# zsh _dotest

# シェルの実行ファイルが置いてあるディレクトリの絶対パスを取得する
echo $(cd $(dirname ${BASH_SOURCE:-$0});pwd)
