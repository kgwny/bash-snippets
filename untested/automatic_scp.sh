#!/bin/bash

HOST=対象ホスト名(IPアドレス)
USER=ログインユーザ
PASS=パスワード
TARGET_DIR=バックアップディレクトリ
BACKUP_DIR=保存先ディレクトリ

expect -c "
set timeout -1
spawn scp -Cpr ${TARGET_DIR} ${USER}@${HOST}:${BACKUP_DIR}
expect {
  \" Are you sure you want to continue connecting (yes/no)? \" {
    send \"yse\r\"
    expect \"password:\"
    send \"${PASS}\r\"
  } \"password:\" {
    send \"${PASS}\r\"
  }
}
interact
"
