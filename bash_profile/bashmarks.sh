# .bashrcにいれてつかう
# ディレクトリにブックマーク名を付与する
# ブックマーク名を指定してディレクトリにジャンプできるようになる

# USAGE:
# s bookmarkname - saves the curr dir as bookmarkname
# g bookmarkname - jumps to the that bookmark
# g b[TAB] - tab completion is available
# l - list all bookmarks

# save current directory to bookmarks
touch ~/.sdirs
function s {
    cat ~/.sdirs | grep -v "export DIR_$1=" > ~/.sdirs1
    mv ~/.sdirs1 ~/.sdirs
    echo "export DIR_$1=$PWD" >> ~/.sdirs
}

# jump to bookmark
function g {
    source ~/.sdirs
    cd $(eval $(echo echo $(echo \$DIR_$1)))
}

# list bookmarks with dirname
function l {
    source ~/.sdirs
    env | grep "^DIR_" | cut -c5- | grep "^.*="
}
# list bookmarks without dirname
function _l {
    source ~/.sdirs
    env | grep "^DIR_" | cut -c5- | grep "^.*=" | cut -f1 -d "="
}

# completion command for g
function _gcomp {
    local curw
    COMPREPLY=()
    curw=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=($(compgen -W '`_l`' -- $curw))
    return 0
}

# bind completion command for g to _gcomp
complete -F _gcomp g
