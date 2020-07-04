#!/usr/bin/env bash

set -euo pipefail

function main() {
    # なにか処理を呼び出す
    echo "Hello World!"
}

# sourceで実行されても、bashでもzshで実行されても
# うまく実行ファイルのパスを取得するためには、BASH_SOURCE:-$0と書くべき
# 実行ファイルのディレクトリの絶対パスを取得するには
# echo $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)でいける

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	main "$@"
fi
