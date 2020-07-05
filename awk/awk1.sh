#!/usr/bin/env bash

set -euo pipefail

function main() {
#
}

# 実行ファイルのディレクトリの絶対パスを取得するには
# echo $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)でいける

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	main "$@"
fi
