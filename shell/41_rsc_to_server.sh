#!/bin/sh
echo 'sqlファイルをサーバーに送信します。'

cd ../app/webroot
echo '作業ディレクトリ'
pwd
scp okianim_rsc.tar.gz amaraimusi@amaraimusi.sakura.ne.jp:www/okianim/app/webroot
echo "okianim_rsc.tar.gzの送信完了"


cmd /k