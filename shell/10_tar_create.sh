#!/bin/sh

cd ../../
echo '作業ディレクトリ'
pwd
echo 'okianimを圧縮開始'
tar cvzf okianim.tar.gz okianim
echo 'okianim.tar.gzを作成'
echo "------------ 終わり"
cmd /k