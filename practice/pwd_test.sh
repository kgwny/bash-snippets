#!/bin/bash

# echo ~
# echo $HOME
# echo $PWD

# PWD: print working directory
base_dir=$PWD

echo "${HOME}へ移動"
cd ~

echo "${base_dir}へ移動"
cd $base_dir

echo "カレントディレクトリ:"
echo "${PWD}"
