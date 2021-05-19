#!bin/bash

# diffディレクトリが存在しない場合、作成する
if [ ! -d ./diff ]; then
  mkdir diff
fi

# diffディレクトリへ入る
cd diff

# diff配下にafterディレクトリが存在する場合、中身を空にする
if [ -d ./after ]; then
  rm -rf after
fi

# diff配下にbeforeディレクトリが存在する場合、中身を空にする
if [ -d ./before ]; then
  rm -rf before
fi

# dist配下のすべてのファイルをafterディレクトリへコピーする
cp -r ../dist after

# clasp cloneにより取得した結果をbeforeディレクトリへコピーする
clasp clone "id" --rootDir "dist"
mv dist before

# vimdiffの結果をhtmlファイルへ出力する
vimdiff after/bundle.js before/bundle.js -c TOhtml -c 'w! diff.html' -c 'qa!'
