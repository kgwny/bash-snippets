# awkを用いて列を取得する

# git status -s 実行時にステータスコードを削除してファイル名のみ取得する
# $ git status -s | awk '{print $2}'

# 関数にしておくと呼び出しやすい
# $colは左から何列目かを入力する
function col {
    awk -v col=$1 '{print $col}'
}

# 呼び出し方
# $ git status -s | col 2
