#!/bin/sh

echo '作業ディレクトリ'
pwd

echo "ローカルDBのパスワードを入力してください"
read pw

echo 'SQLをエクスポートします。'
mysqldump -uroot -p$pw okianim > okianim.sql
echo 'エクスポートしました。'

echo 'SQLファイルをサーバーに転送します。'
scp okianim.sql amaraimusi@amaraimusi.sakura.ne.jp:www/okianim/shell
echo '転送しました。'

echo "------------ 終わり"
cmd /k