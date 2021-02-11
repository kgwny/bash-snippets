#/bin/bash

# 毎日同じ時間にファイルを共有ディレクトリにバックアップ

# 変数設定
target_file=./work/tmp-file
target_dif=./work
backup_dir=./backup_dir

# バックアップファイルが存在するか確認する

if [ ! -d $backup_dir ]; then
    echo "not exist backup_dir"
fi

# 特定のファイルのみをバックアップしたい場合

if [ -e $target_file ]; then
    rsync $target_file $backup_dir/
fi

# ディレクトリまるごとバックアップしたい場合

if [ -d $target_dir ]; then
    rsync -r $target_dir $backup_dir/
fi
