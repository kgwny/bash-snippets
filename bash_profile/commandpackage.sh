# 自分専用のコマンドパッケージ

function cmdp {
    case $1 in
    clone|cl)
        git clone git@bitbucket.org:kgwny/$2.git
        ;;
    move|mv)
        git remote add bitbucket git@bitbucket.org:kgwny/$(basename $(pwd)).git
        git push --all bitbucket
        ;;
    trackall|tr)
        #track all remote branches of a project
        for remote in $(git branch -r | grep -v master ); do git checkout --track $remote ; done
        ;;
    key|k)
        #track all remote branches of a project
        ssh $2 'mkdir -p .ssh && cat >> .ssh/authorized_keys' < ~/.ssh/id_rsa.pub
        ;;
    fun|f)
        #list all custom bash functions defined
        typeset -F | col 3 | grep -v _ | xargs | fold -sw 60
        ;;
    def|d)
        #show definition of function $1
        typeset -f $2
        ;;
    help|h|*)
        echo "[cmdp]dn shell automation tools"
        echo "commands available:"
        echo " [cl]one, [mv|move]"
        echo " [f]fun lists all bash functions defined in .bashrc"
        echo " [def] <fun> lists definition of function defined in .bashrc"
        echo " [k]ey <host> copies ssh key to target host"
        echo " [tr]ackall], [h]elp"
        ;;
    esac
}
# 例えばこれで、cmdp key user@somehostと入力するだけで自分のSSH鍵をどこへでもコピーできます。
