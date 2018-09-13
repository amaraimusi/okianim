#!/bin/bash

echo "DBパスワードを入力してください"
mysqldump -Q -h mysql716.db.sakura.ne.jp -u amaraimusi -p amaraimusi_okianim > www/okianim/shell/okianim.sql 2> www/okianim/shell/dump.error.txt

echo "出力完了"