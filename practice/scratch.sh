#!/bin/bash

# vimとDropboxでスクラッチファイルを開く
# Emacsのスクラッチ機能を模したコマンド

# 一時的なファイルを開き、そこに書いたものをそのまま保存する
# opensslを使ってファイル名にランダムな文字列を入れる関数

function sc {
    gvim ~/Dropbox/$(openssl rand -base64 10 | tr -dc 'a-zA-Z').txt
}

function scratch {
    gvim ~/Dropbox/$(openssl rand -base64 10 | tr -dc 'a-zA-Z').txt
}

# ターミナルからscあるいはscratchと入力することにより
# Dropboxのフォルダ内に一時ファイルが作成され、
# gvimあるいはmacvimのウィンドウが開き、即時メモが記述できるようになる
