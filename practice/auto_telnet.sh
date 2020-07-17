#!/bin/sh
 
host="xxx.xxx.xxx.xxx"
user="foo"
pass="bar"
cmd="ls -l"
 
( echo open ${host}
sleep 1
echo ${user}
sleep 1
echo ${pass}
sleep 1
echo ${cmd}
sleep 1 ) | telnet

# sh ./info.sh | telnet ip ポート番号
# info.sh
# ---
# #!/bin/sh
# sleep 1; echo user-name
# sleep 1; echo password
# sleep 1; echo exit
# ---
