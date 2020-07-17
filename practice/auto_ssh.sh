#!/bin/sh

# user pw host cmd ## ssh ログインしてコマンドを実行するshell関数
X_CMD() {
    local U=$1 ; shift # user
    local PW=$1 ; shift # password
    local H=$1 ; shift # host
    local PR='(#|\\$) $' # prompt regular expression
    expect -c "
    set timeout 20
    spawn ssh -l $U $H
    while (1) {
        expect timeout { break } \"(yes/no)?\" { sleep 1;send \"yes\r\" } \"word: \" { sleep 1;send \"$PW\r\" } -re \"$PR\" { sleep 1;send \"\r\";break }
    }
    expect -re \"$PR\" ; sleep 1; send \"$*\r\"
    expect -re \"$PR\" ; sleep 1; send \"exit\r\"
    "
}

# remote user and password
RUSER="my-name" ; RPASSWD="my-pass" ; HOST=hoge

# ls する
X_CMD $RUSER $RPASSWD $HOST ls /home
# cd して ls する
X_CMD $RUSER $RPASSWD $HOST "cd /home;ls"
