#!/bin/sh
echo 'sqlファイルをサーバーに送信します。'

scp okianim.sql amaraimusi@amaraimusi.sakura.ne.jp:www/okianim/shell
echo "------------ 送信完了"
cmd /k