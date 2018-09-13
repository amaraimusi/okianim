#!/bin/sh

echo 'サーバー先でokianim_rsc.tar.gzを解凍します。'
ssh -l amaraimusi amaraimusi.sakura.ne.jp "
	cd www/okianim/app/webroot;
	pwd;
	tar vxzf okianim_rsc.tar.gz;
	exit;
	"

echo "------------ 解凍完了"
cmd /k