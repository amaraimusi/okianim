#!/bin/sh

cd ../app/webroot
echo '作業ディレクトリ'
pwd
echo 'rscを圧縮開始'
tar cvzf okianim_rsc.tar.gz rsc
echo '圧縮完了→ okianim_rsc.tar.gz'
cmd /k